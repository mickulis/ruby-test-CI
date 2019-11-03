class Squares
	def initialize(i)
		@i = i
	end

	def square_of_sum
		sum = 0
		for i in 0..@i
			sum = sum + i
		end
		sum*sum
	end

	def sum_of_squares
		sum = 0
		for i in 0..@i
			sum = sum + i * i
		end
		sum
	end

	def difference
		square_of_sum - sum_of_squares
	end
end