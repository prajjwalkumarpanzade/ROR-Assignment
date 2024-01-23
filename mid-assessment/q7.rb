# Implement a program to check if a given string is a palindrome or not.
def pallindrome?
  print 'Enter a string: '
  given_string = gets.chomp
  len = given_string.length
  reverse_string = ''
  i = len - 1
  while i >= 0
    reverse_string << given_string[i]
    i -= 1
  end
  given_string == reverse_string
end
pallindrome? ? (puts "Given string is pallindrome") : (puts "Given string is not pallindrome")
