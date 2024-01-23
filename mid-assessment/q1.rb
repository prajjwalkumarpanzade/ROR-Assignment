# Prime number
def prime_number(num)
  if num == 1
    puts "#{num} is not a prime number"
  elsif num == 2
    puts "#{num} is a prime number"
  else
    (2..num - 1).each do |i|
      return "#{num} is not a prime number" if (num % i).zero?
    end
    retuen "#{num} is a prime number"
  end
end

puts prime_number(25)
