
# Design a program to check if a given year is a leap year or not.

def is_leap_year(year)
  if (year % 4).zero?
    if (year % 100).zero?
      if (year % 400).zero?
        puts "#{year} is a leap year"
      else
        puts "#{year} is not a leap year"
      end
    else
      puts "#{year} is a leap year"
    end
  else
    puts "#{year} is not a leap year"
  end
end

is_leap_year(1600)
