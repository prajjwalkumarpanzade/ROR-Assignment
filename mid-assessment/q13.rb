# Write a program to find the common elements between two arrays.
def common(arr1, arr2)
  arr1.each do |x|
    puts "#{x} is common in both arrays" if arr2.include?(x)
  end
end

common([1, 2, 3, 4], [2, 3, 4, 5, 6])
