# Each new term in the Fibonacci sequence is generated by adding the previous two terms.
# By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.


def even_fibs(limit)
  a = []
  i = 0
  j = 1
  
  while j < limit do
    i, j = j, i+j
    a << j if j.even?
  end
  a.sum
end


puts even_fibs(4000000)

# Complete!
# Answer = 4613732
