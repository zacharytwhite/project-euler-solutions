"""A unit fraction contains 1 in the numerator.
The decimal representation of the unit fractions with
denominators 2 to 10 are given:

    1/2	= 	0.5
    1/3	= 	0.(3)
    1/4	= 	0.25
    1/5	= 	0.2
    1/6	= 	0.1(6)
    1/7	= 	0.(142857)
    1/8	= 	0.125
    1/9	= 	0.(1)
    1/10	= 	0.1 

Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle.
It can be seen that 1/7 has a 6-digit recurring cycle.

Find the value of d < 1000 for which 1/d contains the longest recurring cycle
in its decimal fraction part.
"""

import decimal


def get_period(n) :
    """Function to find length of period of 1/n."""
    # Find the (n+1)th remainder after decimal point in value of 1/n.
    rem = 1 # Initialize remainder
    for _ in range(1, n + 2):
        rem = (10 * rem) % n 
  
    # Store (n+1)th remainder
    d = rem 
      
    # Count the number of remainders before next occurrence
    # of (n+1)th remainder 'd'
    count = 1
    rem = (10 * rem) % n 
    count += 1
    while rem != d : 
        rem = (10 * rem) % n 
        count += 1
      
    return count 

max_ = 0
for denom in range(1, 1001):
    seq = get_period(denom)
    num = str(decimal.Decimal(1)/decimal.Decimal(denom))
    if seq > max_ :
        max_ = seq

answer = max_

print(answer)

# Answer: 983
# Time: 0m0.085s
