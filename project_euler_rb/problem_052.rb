# It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.

# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.


i = 1
ans = []

loop do
    pan = (2*i).to_s.split('')

    multis = []

  if pan.uniq.length == pan.length
        is_answer = 3.upto(6).
        map { |m|
            multi = (i*m)
            multis << multi
            multi.to_s.split('')
            }.all? { |a| pan.all? { |n| a.include?(n) } }

    if is_answer
        puts "Answer : #{i}"
        break
    end

    dend
    i += 1
end


# Complete!
# Answer = 142857
