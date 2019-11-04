class Matrix
	def initialize(string)
		@matrix = []
		string_rows = string.split("\n")
		for row in string_rows
			@matrix.append(row.split(" ").map(&:to_i))
		end
	end

	def rows
		@matrix
	end

	def columns
		@matrix.transpose
	end
end