# Implement a program to check if a given string is a palindrome or not.
def pallindrome?
  print 'Enter a string: '
  pall = gets.chomp
  len = pall.length
  pall_rev = ''
  i = len - 1
  while i >= 0
    pall_rev << pall[i]
    i -= 1
  end
  pall == pall_rev
end
puts pallindrome?
