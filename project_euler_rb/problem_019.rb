# You are given the following information, but you may prefer to do some research for yourself.

  # 1 Jan 1900 was a Monday.
  # Thirty days has September,
  # April, June and November.
  # All the rest have thirty-one,
  # Saving February alone,
  # Which has twenty-eight, rain or shine.
  # And on leap years, twenty-nine.
  # A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?


require 'date'

n = 0
1901.upto(2000) do |year|
  1.upto(12) do |month|
    puts "#{year}/#{month}/01"
    n += 1 if Date.parse("#{year}/#{month}/01").wday == 0
  end
end

puts n

# Complete
# Answer = 171