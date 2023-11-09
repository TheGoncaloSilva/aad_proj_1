def calculate_crc(data: str, key: str) -> str:
    # Append k-1 zeros to the data
    data += '0' * (len(key) - 1)
    # Convert the data and key to lists of integers
    data = [int(bit) for bit in data]
    key = [int(bit) for bit in key]
    # Perform modulo-2 binary division
    for i in range(len(data) - len(key) + 1):
        if data[i] == 1:
            for j in range(len(key)):
                data[i + j] ^= key[j]
    # Return the remainder as a string
    return ''.join(str(bit) for bit in data[-(len(key) - 1):])

# Example usage:
#data: str = '100100'    # data without CRC
#data: str = '100100001' # data with CRC
#key: str = '1101' # key
data: str = '101010101010101001110100' # test data with crc
data: str = '101010101010101000000000' # test data with crc
key: str = '110100111' # test key
crc: str = calculate_crc(data, key)
print(f"CRC Remainder: {crc}")
