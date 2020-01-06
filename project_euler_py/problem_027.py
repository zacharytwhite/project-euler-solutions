import sympy

P = sympy.primerange(1, 1000)

a_max, b_max, c_max = 0, 0, 0
for a in range(-1000, 1001):
    for b in P:
        c, n = 0, 0
        while sympy.ntheory.primetest.isprime(n**2 + a*n + b):
            c += 1
            n += 1
        if c > c_max:
            a_max, b_max, c_max = a, b, c
prod = a_max * b_max
print(a_max, b_max, c_max, prod)
