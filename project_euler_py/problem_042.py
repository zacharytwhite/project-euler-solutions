"""The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1),
so the first ten triangle numbers are:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

By converting each letter in a word to a number corresponding to its
alphabetical position and adding these values we form a word value.

For example, the word value for SKY is 19 + 11 + 25 = 55 = t10.
If the word value is a triangle number then we shall call
the word a triangle word.

Using words.txt, a 16K text file containing nearly two-thousand
common English words, how many are triangle words?
"""

infile = open('words.txt', 'r')

words = (infile.read()).replace('"', '').split(',')
scores = []

# Calculate 'score' for each word.
for word in words:
    score = sum(ord(c)-64 for c in word)
    scores.append(score)

max_ = max(scores)

triangles = []
tn = 0
i = 1
# Generate triangles numbers up to biggest score.
while tn <= max_:
    tn = int(0.5 * i * (i+1))
    triangles.append(tn)
    i+=1

answer = 0
for score in scores:
    if score in triangles:
        answer += 1

print(answer)

# Answer: 162
# Time: 0m0.030s
