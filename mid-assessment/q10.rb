
# Design a program to check if a given year is a leap year or not.

def is_leap_year(year)
  if year % 400 == 0
    puts "#{year} is a leap year"
  elsif year % 4 == 0 && year % 100 != 0
    puts "#{year} is a leap year"
  else
    puts "#{year} is not leap year"
  end
end

is_leap_year(1600)
