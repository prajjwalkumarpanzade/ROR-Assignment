# Develop a program to sort an array using the bubble sort algorithm.
def bubble_sort(arr)
  puts "Original array: #{arr}"
  i = 0
  while i < arr.length
    j = 0
    while j < arr.length - 1
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
      j += 1
    end
    i += 1
  end
  puts "Sorted array: #{arr}"
end
bubble_sort([5, 2, 4, 6, 1, 3])
