def bubble_sort(list)
	p list
	n = list.length
	swapped = true
	while swapped
		swapped = false
		for i in 1..n-1 do
			if list[i-1] > list[i]
				a = list[i-1]
				b = list[i]
				list[i-1] = b
				list[i] = a
				p list
				swapped = true
			end
		end
	end
end

def bubble_sort_by(list)
end

bubble_sort([2, 1, 4, 5, 3, 9, 7, 8, 6])
