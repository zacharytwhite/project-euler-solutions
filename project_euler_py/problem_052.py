"""It can be seen that the number, 125874, and its double, 251748,
contain exactly the same digits, but in a different order.

Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x,
contain the same digits.
"""

from commons import digits

def test_two_to_six(n):
    """Tests if n, 2n, 3n, 4n, 5n, and 6n all contain the same digits."""
    if sorted(digits(n)) == sorted(digits(2*n)) == sorted(digits(3*n)
        ) == sorted(digits(4*n)) == sorted(digits(5*n)) == sorted(
        digits(6*n)):
        return True
    
    return False

answer = 0
i = 1
while answer == 0:
    if test_two_to_six(i):
        answer = i
    i += 1

print(answer)

# Answer: 142857
# Time: 0m0650s
