# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are: 
# 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

# NOTE: Do not count spaces or hyphens.
# For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. 
# The use of "and" when writing out numbers is in compliance with British usage.

def in_words(int)
  num_to_word  = {
    1000 => 'thousand',
    100 => 'hundred',
    90 => 'ninety',
    80 => 'eighty',
    70 => 'seventy',
    60 => 'sixty',
    50 => 'fifty',
    40 => 'forty',
    30 => 'thirty',
    20 => 'twenty',
    19 => 'nineteen',
    18 => 'eighteen',
    17 => 'seventeen', 
    16 => 'sixteen',
    15 => 'fifteen',
    14 => 'fourteen',
    13 => 'thirteen',
    12 => 'twelve',
    11 => 'eleven',
    10 => 'ten',
    9 => 'nine',
    8 => 'eight',
    7 => 'seven',
    6 => 'six',
    5 => 'five',
    4 => 'four',
    3 => 'three',
    2 => 'two',
    1 => 'one'
  }

  str = ''
  num_to_word.each do |num, name|

    if int == 0
      return str

    elsif int < 10 == 1 && int/num > 0
      return str + "#{name}"

    elsif int < 100 && int/num > 0
      return str + "#{name}" if int%num == 0
      return str + "#{name} " + in_words(int%num)

    elsif int % 100 == 0 && int/num > 0
      return str + in_words(int/num) + " #{name}" + in_words(int % num)

    elsif int/num > 0
      return str + in_words(int/num) + " #{name} and " + in_words(int%num)

    end
  end
end

a = 1.upto(1000).
  map{ |int| in_words(int) }.
  map{ |word| word.gsub(' ', '').split('') }.
  flatten.
  length

puts a

# Complete!
# Answer = 21124
