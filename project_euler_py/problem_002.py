"""Each new term in the Fibonacci sequence is generated by adding the previous
two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not
exceed four million, find the sum of the even-valued terms.
"""

N = 4000000

even_fibs = []
i = 0
j = 1
while j < N:
    k = i + j
    i = j
    j = k
    if j % 2==0: even_fibs.append(j)

print(sum(even_fibs))

# Answer: 4613732
# Time: 0m0.025s