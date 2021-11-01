import random
import sys

print("{", end = ' ')

for i in range(0, int(sys.argv[1]) - 1):
    print(random.randint(1, int(sys.argv[1])), end = ', ')
print(random.randint(1, int(sys.argv[1])), end = ' ')

print("}")