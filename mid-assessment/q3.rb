# 3. Write a program to print a-z in reverse order
def rev_str
  original = Array('a'..'z')
  i = original.length - 1
  reverse_array = []
  while i >= 0
    reverse_array << original[i]
    i -= 1
  end
  print "Original string: #{original.join}\n"
  print "Reverse string: #{reverse_array.join}\n"
end

rev_str
