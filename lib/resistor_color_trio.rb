class ResistorColorTrio
	@@valueMap = {
		"black".hash => 0,
		"brown".hash => 1,
		"red".hash => 2,
		"orange".hash => 3,
		"yellow".hash => 4,
		"green".hash => 5,
		"blue".hash => 6,
		"violet".hash => 7,
		"grey".hash => 8,
		"white".hash => 9
	}

	def initialize(inputArray)
		for value in inputArray
			if @@valueMap.key?(value.hash)
				@array = inputArray.map {|val| @@valueMap[val.hash]}
			else
				raise(ArgumentError)
			end
		end
	end

	def label
		output = "Resistor value: "
		number = getNumber
		if number % 1000 == 0
			output + (number/1000).to_s + " kiloohms"
		else
			output + number.to_s + " ohms"
		end
	end


	def getNumber
		number = ""
		for i in 0..(@array.length-2)
			number = number + @array[i].to_s
		end
		(10**@array.last) * number.to_i

	end
end
