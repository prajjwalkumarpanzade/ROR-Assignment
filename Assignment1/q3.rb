arr = Array("a".."z")
new = []
i = arr.length-1
while i >= 0 do
  new =new.push(arr[i])
i = i-1
end
arr,new = new,arr
puts arr

