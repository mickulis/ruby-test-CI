class RunLengthEncoding
	def self.encode(input)
		string = input
		split = []

		until string.length == 0
			matching = (string.match /([^0-9])\1*/).to_s
			split.append(matching)
			string = string[split.last.length, string.length]
		end

		out = ""
		for substring in split
			if substring.length > 1
				out = "#{out}#{substring.length}#{substring[0]}"
			else
				out = "#{out}#{substring[0]}"
			end
		end
		out
	end

	def self.decode(input)
		string = input
		split = []

		until string.length == 0
			matching = (string.match /([0-9]*[^0-9])/).to_s
			split.append(matching)
			string = string[split.last.length, string.length]
		end



		out = ""
		for code in split
			if code.length == 1
				out = "#{out}#{code}"
			else
				extracted_int = (code.match /[0-9]*/).to_s.to_i
				for i in 1..extracted_int
					out = "#{out}#{code[code.length-1]}"
				end
			end
		end
		out
	end
end

