class Grains
	def self.total
		18_446_744_073_709_551_615
	end

	def self.square(number)
		if number.between?(1, 64)
			2**(number-1)
		else
			raise ArgumentError
		end
	end
end