from collections import Counter
import pprint
import logging

bit7 = [13, 12, 7, 5, 3, 1, 0]
bit6 = [15, 13, 11, 7, 6, 5, 4, 3, 2, 1]
bit5 = [14, 12, 10, 6, 5, 4, 3, 2, 1, 0]
bit4 = [15, 12, 11, 9, 7, 4, 2]
bit3 = [14, 11, 10, 8, 6, 3, 1]
bit2 = [13, 10, 9, 7, 5, 2, 0]
bit1 = [15, 13, 9, 8, 7, 6, 5, 4, 3, 0]
bit0 = [14, 13, 8, 6, 4, 2, 1, 0]

def generate_all_pairs(in_array):
    pairs = []
    for i, a in enumerate(in_array):
        for b in in_array[i + 1:]:
            pairs.append((a, b))
    return pairs

def find_best_combinations(bit_layers, best_solution):
    best_combinations = [generate_all_pairs(layer) for layer in bit_layers]
    max_combinations = 0
    best_combination = []

    for layer in range(len(bit_layers)):
        remaining_layers = [bit_layer for i, bit_layer in enumerate(bit_layers) if i != layer]
        remaining_combinations = find_best_combinations(remaining_layers, best_solution)

        total_combinations = len(best_combinations[layer]) + len(remaining_combinations)
        if total_combinations > max_combinations:
            max_combinations = total_combinations
            best_combination = [best_combinations[layer]] + remaining_combinations

    if max_combinations > best_solution['max_combinations']:
        best_solution['max_combinations'] = max_combinations
        best_solution['best_combination'] = best_combination

    return best_combination

initial_run = True  # Flag to check if it's the first run

while True:
    if not initial_run:
        bit7 = list(map(int, input("Enter new values for bit7 (separated by spaces): ").split()))
        bit6 = list(map(int, input("Enter new values for bit6 (separated by spaces): ").split()))
        bit5 = list(map(int, input("Enter new values for bit5 (separated by spaces): ").split()))
        bit4 = list(map(int, input("Enter new values for bit4 (separated by spaces): ").split()))
        bit3 = list(map(int, input("Enter new values for bit3 (separated by spaces): ").split()))
        bit2 = list(map(int, input("Enter new values for bit2 (separated by spaces): ").split()))
        bit1 = list(map(int, input("Enter new values for bit1 (separated by spaces): ").split()))
        bit0 = list(map(int, input("Enter new values for bit0 (separated by spaces): ").split()))

    bit_layers = [bit7, bit6, bit5, bit4, bit3, bit2, bit1, bit0]

    best_solution = {
        'max_combinations': 0,
        'best_combination': None
    }

    find_best_combinations(bit_layers, best_solution)
    best_combination = best_solution['best_combination']

    all_combinations = [pair for combination in best_combination for pair in combination]

    counter = Counter(all_combinations)

    pp = pprint.PrettyPrinter(indent=4)

    logging.basicConfig(level=logging.INFO, format='%(message)s')
    logger = logging.getLogger()

    # logger.info("=== 1-Combinations ===")
    # pp.pprint(best_combination)

    logger.info("=== 2-Combinations to test if the number of XORs reduces ===")
    unique_combinations = set()
    for pair, count in counter.most_common():
        if pair not in unique_combinations:
            unique_combinations.add(pair)
            logger.info(f"Pair: {pair}, Count: {count}")

    # logger.info("=== 3-Best Solution ===")
    # logger.info("Best XOR Combinations by Layer:")
    # for i, layer_combination in enumerate(best_combination):
    #     layer_name = f"bit{7 - i}"
    #     logger.info(f"Layer {layer_name}: {layer_combination}")

    continue_execution = input("Do you want to enter new values for bit arrays? (Enter 'Y' to continue, any other key to exit): ")
    if continue_execution != 'Y':
        break

    initial_run = False  # Set the flag to False after the initial run
