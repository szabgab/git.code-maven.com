import sys
from myfibo import fibo

if len(sys.argv) != 2:
    exit(f"Usage: {sys.argv[0]} N")

n = int(sys.argv[1])

result = 1
for k in range(2, n):
    result *= fibo(k)
print(result)

