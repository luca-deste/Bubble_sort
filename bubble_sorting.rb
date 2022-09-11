def recursive_bubble_sort(arr,iter=arr.length)

  if iter == 1
    return arr
  end

  count = 0

  iter.times do |i|
    if arr[i+1] != nil && arr[i] > arr[i+1]
      arr[i],arr[i+1] = arr[i+1],arr[i]
      count += 1
    end
  end
  if count == 0
    return arr
  end
  recursive_bubble_sort(arr,iter-1)
end

def bubble_sort(arr)
  arr.length.times do |n|
    arr.length.times do |i|
      if arr[i+1] != nil && arr[i] > arr[i+1]
        arr[i],arr[i+1] = arr[i+1],arr[i]
      end
    end
  end
  return arr
end

newArr = bubble_sort([4,3,78,2,0,2])
p '++++++++++'
p newArr
p '++++++++++'