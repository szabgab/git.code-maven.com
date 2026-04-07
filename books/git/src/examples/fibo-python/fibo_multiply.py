import sys
from myfibo import fibo

def multiply_fibo(n):
    result = 1
    for k in range(2, n):
        result *= fibo(k)
    return result

if __name__ == "__main__":
    if len(sys.argv) != 2:
        exit(f"Usage: {sys.argv[0]} N")

    n = int(sys.argv[1])
    print(f"Working on {n}")

    print(multiply_fibo(n))


