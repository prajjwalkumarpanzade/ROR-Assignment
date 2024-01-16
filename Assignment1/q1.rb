#1. WAP to display number is prime or not

puts "Enter number"

number = gets.to_i
flag = 0
if number > 1
  for i in 2 ... number do

   if number % i == 0
    flag = 1

   end
  end

  if flag == 0
    puts "Number is prime "
  else
  puts "Number is not prime"
end
end

