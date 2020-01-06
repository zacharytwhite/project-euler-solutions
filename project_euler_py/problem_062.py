"""The cube, 41063625 (345**3), can be permuted to produce two other cubes:

56623104 (384**3) and 66430125 (405**3).

In fact, 41063625 is the smallest cube which has exactly three permutations
of its digits which are also cube.

Find the smallest cube for which exactly five permutations of its digits are cube.
"""

digits, min_cube, n, d = '', float('Inf'), 100, 5
cubes = {}

while min_cube == float('Inf') or len(digits) <= len(str(min_cube)):
    c = n*n*n
    digits = ''.join(sorted(str(c)))
    if digits in cubes:
        cubes[digits] += [c]
        if len(cubes[digits]) == d:
            min_cube = min(min_cube, cubes[digits][0])
    else:
        cubes[digits] = [c]
    n += 1    
print(cubes)
print("Smallest cube =", min_cube)

# Help
