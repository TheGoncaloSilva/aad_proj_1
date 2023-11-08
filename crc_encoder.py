def calculate_crc(input_word):
    # Convert input to binary string
    input_bitstring = format(input_word, '016b')

    # Extracting individual bits from the input
    bits = [int(bit) for bit in input_bitstring]

    # Perform XOR operations to calculate the remainder bits
    r7 = (bits[0] ^ bits[1]) ^ bits[3] ^ bits[5] ^ bits[7] ^ bits[12] ^ bits[13]
    r6 = (bits[1] ^ bits[2]) ^ bits[3] ^ bits[4] ^ bits[5] ^ bits[6] ^ bits[7] ^ bits[11] ^ bits[13] ^ bits[15]
    r5 = (bits[0] ^ bits[1]) ^ bits[2] ^ bits[3] ^ bits[4] ^ bits[5] ^ bits[6] ^ bits[10] ^ bits[12] ^ bits[13]
    r4 = (bits[2] ^ bits[4]) ^ bits[7] ^ bits[9] ^ bits[11] ^ bits[12] ^ bits[15]
    r3 = (bits[1] ^ bits[3]) ^ bits[6] ^ bits[8] ^ bits[10] ^ bits[11] ^ bits[14]
    r2 = (bits[0] ^ bits[2]) ^ bits[5] ^ bits[7] ^ bits[9] ^ bits[10] ^ bits[13]
    r1 = (bits[0] ^ bits[3]) ^ bits[5] ^ bits[7] ^ bits[8] ^ bits[9] ^ bits[13] ^ bits[15]
    r0 = (bits[0] ^ bits[1]) ^ bits[2] ^ bits[4] ^ bits[6] ^ bits[8] ^ bits[13] ^ bits[14]

    # Compose the remainder bits into a string
    remainder = str(r7) + str(r6) + str(r5) + str(r4) + str(r3) + str(r2) + str(r1) + str(r0)
    
    # Convert remainder string to integer
    crc_remainder = int(remainder, 2)
    return crc_remainder

# Example usage:
input_data = 0b1010101010101010  # 16-bit word (change as needed)
result = calculate_crc(input_data)
print("CRC Remainder:", bin(result))
