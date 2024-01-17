puts "Enter number"

number = gets.to_i
flag = 0
if number > 1
  for i in 2 ... number do

   if number % i == 0
    flag = 1
    break

   end
  end

puts flag == 0? "number is prime":"Number is not prime"

else
  puts "Enter number greater than 1"
end
