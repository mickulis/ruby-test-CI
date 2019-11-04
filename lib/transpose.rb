class Transpose
	def self.transpose(input)
		max  = input.split("\n").map(&:size).max
		input.split("\n")
			.map { |s| s.gsub(" ", "~").ljust(max).chars }
			.transpose
			.map { |s| s.join.rstrip.gsub("~", " ") }
			.join("\n")
	end
end

