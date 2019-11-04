class PerfectNumber
	def self.classify(number)
		if number < 0
			raise RuntimeError
		end
		sum = 1
		for i in 2..Math.sqrt(number)
			if number%i == 0
				sum = sum + i + number/i
			end
		end
		if sum == number
			"perfect"
		elsif sum > number
			"abundant"
		else
			"deficient"
		end
	end
end