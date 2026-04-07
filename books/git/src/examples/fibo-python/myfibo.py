def fibo(n):
    if n == 1:
        return 0
    if n == 2:
        return 1
    fibs = [0, 1]
    for _ in range(2, n):
        fibs.append(fibs[-1] + fibs[-2])

    return fibs[-1]

# One developer changes the `

