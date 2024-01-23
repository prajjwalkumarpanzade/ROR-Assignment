# Write a program to calculate the factorial of a given number.
def factorial(num)
  fact = 1
  if num.zero?
    puts 'Factorial of 0 is 1'
  else
    (1..num).each do |i|
      fact *= i
    end
  end
  puts "Factorial of #{num} is #{fact}"
end
factorial(5)
