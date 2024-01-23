
# Create a program to count the number of vowels and consonants in a given string.
def vowels_count(input_string)
  vowels= 'aeiouAEIOU'
  consonants  = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ'
  v_count = 0
  c_count = 0
  input_string.each_char do |char|
    if vowels.include?(char)
      v_count += 1
    elsif consonants.include?(char)
      c_count += 1
    end
  end
  puts "vowels count is #{v_count}"
  puts "consonants  count is #{c_count}"
end
puts 'Enter the string'
input_string = gets.chomp
vowels_count(input_string)
