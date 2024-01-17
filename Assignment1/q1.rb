puts "Enter number"

number = gets.to_i
flag = false
if number > 1
  for i in 2 ... number do

   if number % i == 0
    flag = true
    puts "Number is not prime"
    break

   end
  end

  if flag == false
    puts "Number is prime "
 # else
  #puts "Number is not prime"
end
end
