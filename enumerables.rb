module Enumerable
	def my_each
		n = self.length
		for i in 0...n do
			yield(self[i])
		end
	end

	def my_each_with_index
		n = self.length
		for i in 0...n do
			yield(self[i], i)
		end
	end

	def my_select
		arr = Array.new
		self.my_each do |a|
			if yield(a)
				arr << a
			end
		end
		return arr
	end

	def my_all?
		self.my_each do |a|
			if !yield(a)
				return false
			end
		end
		return true
	end

end
