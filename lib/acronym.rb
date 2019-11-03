class Acronym
	def self.abbreviate(string)
		wordArray = string.split(/[\s,'-]/).reject(&:empty?)
		result = ""
		for word in wordArray
			if word.class == "".class
				result = result + word[0].upcase
			end
		end
		result
	end
end