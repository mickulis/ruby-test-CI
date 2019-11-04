class SumOfMultiples
	def initialize(*args)
		@list = []
		for argument in args
			@list.append(argument)
		end
	end

	def to(max)
		sum = 0
		for i in 1..max-1
			array = @list.select do |elem|
				elem > 0 and i%elem == 0
			end
			if array.any?
				sum = sum + i
			end
		end
		sum
	end
end