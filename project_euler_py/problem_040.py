"""An irrational decimal fraction is created by 
concatenating the positive integers:

0.123456789101112131415161718192021...

It can be seen that the 12th digit of the fractional part is 1.

If dn represents the nth digit of the fractional part,
find the value of the following expression.

d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000
"""

fraction = ''
i = 1

while len(fraction) < 1000000:
    fraction += str(i)
    i += 1

dec = str(fraction)

answer = int(dec[0]) * int(dec[99]) * int(dec[999]) * int(dec[9999]) * int(dec[99_999]) * int(dec[999_999])

print(answer)

# Answer: 210
# Time: 0m0.145s
