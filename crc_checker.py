def _crc_calc(data: str, key: str) -> str:
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

def check_crc(data: str, key: str) -> str:
    return _crc_calc(data, key)

def calculate_crc(data: str, key: str) -> str:
    # Append k-1 zeros to the data
    data += '0' * (len(key) - 1)
    return _crc_calc(data, key)

# Calculate crc 1
ax: str = '100100' # data without CRC
bx: str = '1101' # key
crc: str = calculate_crc(ax, bx)
print(f"Calculate CRC: {crc}") # should be 001

# Check crc 1
ax: str = '100100001' # data with CRC
bx: str = '1101' # key
res: str = check_crc(ax, bx)
print(f"Check CRC: {res}") # should be 0

# Calculate crc 2
ax: str = '1010101010101010' # data without CRC
bx: str = '110100111' # key
crc: str = calculate_crc(ax, bx)
print(f"Calculate CRC: {crc}") # should be 11101000

# Calculate crc 3
ax: str = '1001111010010111' # data without CRC
bx: str = '110100111' # key
crc: str = calculate_crc(ax, bx)
print(f"Calculate CRC: {crc}") # should be 00011110

# Check crc 3
ax: str = '100111101001011100011110' # data with CRC
bx: str = '110100111' # key
res: str = check_crc(ax, bx)
print(f"Check CRC: {res}") # should be 0

# Calculate crc 4
ax: str = '01010101010101010101100' # data without CRC
bx: str = '110100111' # key
crc: str = calculate_crc(ax, bx)
print(f"Calculate CRC: {crc}") # should be 00011110