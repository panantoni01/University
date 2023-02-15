import pyaes

# A 256 bit (32 byte) key
key = str.encode("This_key_for_demo_purposes_only!")
print(key)

# For some modes of operation we need a random initialization vector
# of 16 bytes
iv = str.encode("InitializationVe")
print(iv)

aes = pyaes.AESModeOfOperationCBC(key, iv = iv)
plaintext = "TextMustBe16Byte"
ciphertext = aes.encrypt(str.encode(plaintext))

print(ciphertext)


# The cipher-block chaining mode of operation maintains state, so
# decryption requires a new instance be created
aes = pyaes.AESModeOfOperationCBC(key, iv = iv)
decrypted = aes.decrypt(ciphertext).decode()

# True
print(decrypted == plaintext)
