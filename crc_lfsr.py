def lfsr(seed, num_steps):
    print(f"Step\tRegister\tXOR\tOutput")
    print(f"0\t{seed:08b}\t-\t-")

    result = []
    for step in range(num_steps):
        result.append(seed & 1)  # Output the rightmost bit (LSB) of the LFSR

        # XOR operation on selected bits (6 and 2 for an 8-bit LFSR)
        feedback = ((seed >> 6) & 1) ^ ((seed >> 2) & 1)
        output_bit = seed >> 7  # Get the leftmost bit for output
        seed = ((seed << 1) | feedback) & 0xFF  # Shift left and apply the feedback

        print(f"{step + 1}\t{seed:08b}\t{feedback}\t{output_bit}")

    return result

# Initialize the LFSR with a seed value (non-zero)
seed_value = 0b00000001  # Example seed value (8 bits)
num_steps = 16  # Number of steps to perform

output_sequence = lfsr(seed_value, num_steps)
print("Output Sequence:", output_sequence)
