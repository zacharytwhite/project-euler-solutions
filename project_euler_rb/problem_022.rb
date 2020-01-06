# Using the file 'names.txt,' a 46K text file containing 
# over five-thousand first names: begin by sorting it into alphabetical order. 
# Then working out the alphabetical value for each name, multiply this value by 
# its alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, 
# is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?

names = File.open('names.txt', &:read).gsub('"', '').gsub(',', ' ').split(' ').sort

def alpha_score(names)
  alpha_nums = {
    'A' => '1',
    'B' => '2',
    'C' => '3',
    'D' => '4',
    'E' => '5',
    'F' => '6',
    'G' => '7',
    'H' => '8',
    'I' => '9',
    'J' => '10',
    'K' => '11',
    'L' => '12',
    'M' => '13',
    'N' => '14',
    'O' => '15',
    'P' => '16',
    'Q' => '17',
    'R' => '18',
    'S' => '19',
    'T' => '20',
    'U' => '21',
    'V' => '22',
    'W' => '23',
    'X' => '24',
    'Y' => '25',
    'Z' => '26',
  }
  
  calc = names.map do |name|
    name.split('').map do |letter|
      letter.sub(letter, alpha_nums[letter])
    end
  end
  calc.map {|x| x.map(&:to_i).sum }
end


def final_score(names)
  final = alpha_score(names).zip(1..names.length).map { |x, y| x * y }.sum
end


puts final_score(names)

# Complete!
# Answer = 871198282
