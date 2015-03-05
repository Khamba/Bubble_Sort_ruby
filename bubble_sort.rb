def bubble_sort(arr_to_sort)
	for j in 2..arr_to_sort.length-1
		for i in 0..arr_to_sort.length-j
			if arr_to_sort[i] > arr_to_sort[i+1]
				temp = arr_to_sort[i]
				arr_to_sort[i] = arr_to_sort [i+1]
				arr_to_sort[i + 1] = temp
			end
		end
	end
	return arr_to_sort
end

#p bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(arr_to_sort)
	for j in 2..arr_to_sort.length-1
		for i in 0..arr_to_sort.length-j
			if yield(arr_to_sort[i], arr_to_sort[i+1]) < 1
				temp = arr_to_sort[i]
				arr_to_sort[i] = arr_to_sort [i+1]
				arr_to_sort[i + 1] = temp
			end
		end
	end
	return arr_to_sort
end

arr = bubble_sort_by(["hi","hello","hey"]) do |left,right|
	right.length - left.length
 end

 p arr