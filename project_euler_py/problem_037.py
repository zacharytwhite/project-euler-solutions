"""The number 3797 has an interesting property. Being prime itself, it is
possible to continuously remove digits from left to right, and remain prime
at each stage:

3797, 797, 97, and 7.

Similarly we can work from right to left:

3797, 379, 37, and 3.

Find the sum of the only eleven primes that are both truncatable from
left to right and right to left.

Note: 2, 3, 5, and 7 are not considered to be truncatable primes.
"""

import sympy

def truncate(n):
    """Function to truncate a provided integer, n, n-1 times.
    
    Returns a generator of n length, containing the original number,
    followed by n-1 instances of n with each leftmost digit being
    removed every subsequent loop, followed by n-1 instances of n
    with each rightmost digit being removed every subsequent loop.

    For example, n = 5423 will return the generator:
    [5423, 423, 34, 3, 542, 54, 5].

    Duplicate numbers are NOT automatically removed from the return value.
    """
    num = str(n)
    for i in range(len(num)):
        trunc_l = int(num[i:])
        yield trunc_l

    for i in range(len(num)-1, 0, -1):
        trunc_r = int(num[:i])
        yield trunc_r
    
# print(all(sympy.isprime(x) for x in list(truncate(739397))))
truncs = []
i = 9
while len(truncs) < 11:
    if all(sympy.isprime(x) for x in truncate(i)):
        truncs.append(i)
    i+=2 # <-- oofty

answer = sum(truncs)

print(answer)

# Answer: 748317
# Time: 0m3.800s

# Need to improve
