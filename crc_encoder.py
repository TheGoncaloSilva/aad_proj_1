def calculate_crc(input_word: bin) -> str:
    # Convert input to binary string
    input_bitstring: str = format(input_word, '016b')

    # Extracting individual bits from the input
    bits: list[int] = [int(bit) for bit in input_bitstring]
    r: list[int] = [0 for i in range(8)]

    # Perform XOR operations to calculate the remainder bits
    r[7] = bits[0] ^ bits[1] ^ bits[3] ^ bits[5] ^ bits[7] ^ bits[12] ^ bits[13]
    r[6] = bits[1] ^ bits[2] ^ bits[3] ^ bits[4] ^ bits[5] ^ bits[6] ^ bits[7] ^ bits[11] ^ bits[13] ^ bits[15]
    r[5] = bits[0] ^ bits[1] ^ bits[2] ^ bits[3] ^ bits[4] ^ bits[5] ^ bits[6] ^ bits[10] ^ bits[12] ^ bits[14]
    r[4] = bits[2] ^ bits[4] ^ bits[7] ^ bits[9] ^ bits[11] ^ bits[12] ^ bits[15]
    r[3] = bits[1] ^ bits[3] ^ bits[6] ^ bits[8] ^ bits[10] ^ bits[11] ^ bits[14]
    r[2] = bits[0] ^ bits[2] ^ bits[5] ^ bits[7] ^ bits[9] ^ bits[10] ^ bits[13]
    r[1] = bits[0] ^ bits[3] ^ bits[4] ^ bits[5] ^ bits[6]^ bits[7] ^ bits[8] ^ bits[9] ^ bits[13] ^ bits[15]
    r[0] = bits[0] ^ bits[1] ^ bits[2] ^ bits[4] ^ bits[6] ^ bits[8] ^ bits[13] ^ bits[14]

    # Compose the remainder bits into a string
    crc_remainder: str = ""
    for i,val in enumerate(reversed(r)):
        crc_remainder += str(val)
    
    return crc_remainder

# Example usage:
input_data: bin = 0b1010101010101010  # 16-bit word (change as needed)
crc: str = calculate_crc(input_data)
print("CRC Length (should be 8): ", len(crc))
print("CRC Remainder:", str(crc))
encoded_data: str = str(bin(input_data)[2:]) + crc
print("Encoded Data:", encoded_data)
