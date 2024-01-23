# Design a program to calculate the sum of digits of a given integer number.

def sum_of_digits(num)
  sum = 0
  while num.positive?
    sum += num % 10
    num /= 10
  end
  puts "Sum of digits is #{sum}"
end

sum_of_digits(1234)
