class Series
	def initialize(string)
		@string = string
	end

	def slices(n)

		if n > @string.length
			raise ArgumentError
		end
		array = Array.new
		for i in 0..(@string.length - n)
			array[i] = @string[i..i + n - 1]
		end
		array
	end
end
