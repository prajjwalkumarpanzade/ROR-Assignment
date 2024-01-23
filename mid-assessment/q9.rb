
# Create a program to count the number of vowels and consonants in a given string.
def vovels_count(input_string)
  vovels = 'aeiouAEIOU'
  consonents = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ'
  v_count = 0
  c_count = 0
  input_string.each_char do |char|
    if vovels.include?(char)
      v_count += 1
    elsif consonents.include?(char)
      c_count += 1
    end
  end
  puts "Vovels count is #{v_count}"
  puts "Consonents count is #{c_count}"
end
puts 'Enter the string'
input_string = gets.chomp
vovels_count(input_string)
