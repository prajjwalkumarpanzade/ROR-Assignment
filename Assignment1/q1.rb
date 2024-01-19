puts "Enter number"
number = gets.to_i
if number > 1
  for i in 2 ... number do
    if number % i == 0
      puts "Number is not prime"
      break
    else 
      puts "Number is prime"    
    end
  end
else
  puts "Enter number greater than 1"
end
