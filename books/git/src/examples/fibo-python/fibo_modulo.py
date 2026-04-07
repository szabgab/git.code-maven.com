import sys
from myfibo import fibo

if len(sys.argv) != 2:
    exit(f"Usage: {sys.argv[0]} DIV")

div = int(sys.argv[1])

for n in range(100):
    fib = fibo(n)
    if fib % div == 0:
        print(f"fibo({n}) == {fib} can be divided by {div}")

