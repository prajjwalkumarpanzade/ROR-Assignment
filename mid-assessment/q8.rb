# Develop a program to find the largest element in an array.
def greater(arr)
  greater = 0
  (0...arr.length - 1).each do |i|
    if arr[i] >= arr[i + 1] && arr[i] > greater
      greater = arr[i]
    elsif arr[i + 1] > arr[i] && arr[i + 1] > greater
      greater = arr[i + 1]
    end
  end
  greater
end
arr = [1, 5, 10, 25, 3, 8, 32, 44, 2, 4, 78, 22, 56, 14, 11]
puts greater(arr)
