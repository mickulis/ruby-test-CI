class HighScores

	def initialize(scores)
		@scores = scores
	end

	def latest
		@scores.last
	end

	def scores
		@scores
	end

	def personal_top_three
		@scores.sort.reverse[0..2]
	end

	def personal_best
		@scores.sort.last
	end

	def latest_is_personal_best?
		latest == personal_best
	end

end
