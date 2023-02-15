import pyaes


key = "7dfa554b1b7f08bb6cdfa868594d47bf"
key = bytes([int(key[i:i+2], 16) for i in range(0, len(key), 2)])

iv = "103f182962a783d5b847de76e20ef159"
iv = bytes([int(iv[i:i+2], 16) for i in range(0, len(iv), 2)])

ciphertext = "92c22adb79a046e2b6bef99777389516\
b48b0a12cea30f4ed3dd7f2ece74fc78\
5df3eab6dfe5399d2ea0731d2b812234\
1e1aadaf53242a650416628fafc99bf2\
4f8313e6833a4678345cb201bc0cff20\
24c12a7a70d394c952a9cf6ed5ffb2f7\
9cc066ccae0d107d531629f381de5f84\
2d1605ffd2b8a17223fb29ca1d62a023\
813968a86b32ca465ede499c5d302e30\
99ec08e27d1f0711e3ebd1fdfd093e83\
98538101e4e3ac15eafa144c484d60d2"
ciphertext = bytes([int(ciphertext[i:i+2], 16) for i in range(0, len(ciphertext), 2)])

aes = pyaes.AESModeOfOperationCBC(key, iv = iv)

decrypted = ""
for i in range(0, len(ciphertext), 16):
    decrypted += aes.decrypt(ciphertext[i:i+16]).decode()

print(decrypted)


