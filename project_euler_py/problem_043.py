"""The number, 1406357289, is a 0 to 9 pandigital number because it is
made up of each of the digits 0 to 9 in some order,
but it also has a rather interesting sub-string divisibility property.

Let d1 be the 1st digit, d2 be the 2nd digit, and so on. 
In this way, we note the following:

    d2d3d4=406 is divisible by 2
    d3d4d5=063 is divisible by 3
    d4d5d6=635 is divisible by 5
    d5d6d7=357 is divisible by 7
    d6d7d8=572 is divisible by 11
    d7d8d9=728 is divisible by 13
    d8d9d10=289 is divisible by 17

Find the sum of all 0 to 9 pandigital numbers with this property.
"""

import itertools

def has_sub_string_thing(num):
    """Determines if num meets weird sub string criteria stated above."""
    if (int((num[1] + num[2] + num[3])) % 2 == 0 and
        int((num[2] + num[3] + num[4])) % 3 == 0 and
        int((num[3] + num[4] + num[5])) % 5 == 0 and
        int((num[4] + num[5] + num[6])) % 7 == 0 and
        int((num[5] + num[6] + num[7])) % 11 == 0 and
        int((num[6] + num[7] + num[8])) % 13 == 0 and
        int((num[7] + num[8] + num[9])) % 17 == 0):
        return True
    return False

# List of digits 0-9 to facilitate construction of all pandgital permutations.
pan = (c for c in '0123456789')

# List of all pandigital permutations (stored as strings).
perms = (''.join(s) for s in (itertools.permutations(pan, 10)))

# Create list from perms, filtering out all numbers with a leading 0.
no_0s = (s for s in perms if s[0] != '0')

# List of (str) numbers that meet weird sub string criteria.
successes = (int(s) for s in no_0s if has_sub_string_thing(s))

answer = sum(successes)

print(answer)

# Answer: 16695334890
# Time: 0m4.235s
