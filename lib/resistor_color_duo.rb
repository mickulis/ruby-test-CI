class ResistorColorDuo
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

	def self.value(inputArray)
		10 * @@valueMap[inputArray[0].hash] + @@valueMap[inputArray[1].hash]
	end
end
