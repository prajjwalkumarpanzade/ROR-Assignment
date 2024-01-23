# 5. Write a program to find the IP address class
def main
  puts 'Enter your IP address: '
  ip = gets.chomp
  valid_ip =  ip.match(/(\d{1,3}\.){3}\d{1,3}/)
  # valid_ip = valid_ip.split('.')
  valid_ip =  valid_ip.to_s.split('.')
  case valid_ip[0].to_i
  when 0..127
    puts 'Class A'
  when 128..191
    puts 'Class B'
  when 192..223
    puts 'Class C'
  when 224..239
    puts 'Class D'
  when 240..255
    puts 'Class E'
  else
    puts 'Enter valid IP address'
  end
end
main
