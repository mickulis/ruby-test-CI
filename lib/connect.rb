require 'set'

class Board
	def initialize(board)
		@parsedBoard = []
		for row in board
			@parsedBoard.append(row.strip.split(" ").reject { |s| s.empty? })
		end
		@height = @parsedBoard.length
		@width = @parsedBoard[0].length
	end


	def winner
		if x_wins?
			"X"
		elsif y_wins?
			"O"
		else
			""
		end
	end

	def x_wins?
		visited_x = Set[]
		x_won = false
		for i in 0..@height
			x_won = x_won || move_x(0, i, visited_x)
		end
		x_won
	end

	def move_x(x, y, visited)
		if visited === "#{x} #{y}" or x < 0 or !y.between?(0, @height - 1)
			false
		elsif x == @width
			true
		else
			visited << "#{x} #{y}"
			if @parsedBoard[y][x] == "X"
				move_x(x-1, y  , visited) or
				move_x(x-1, y+1, visited) or
				move_x(x  , y-1, visited) or
				move_x(x  , y+1, visited) or
				move_x(x+1, y-1, visited) or
				move_x(x+1, y  , visited)
			else
				false
			end
		end
	end


	def y_wins?
		visited_y = Set[]
		y_won = false
		for i in 0..@width
			y_won = y_won || move_y(i, 0, visited_y)
		end
		y_won
	end

	def move_y(x, y, visited)
		if visited === "#{x} #{y}" or !x.between?(0, @width - 1) or y < 0
			false
		elsif y == @height
			true
		else
			visited.add("#{x} #{y}")
			if @parsedBoard[y][x] == "O"
				move_y(x-1, y  , visited) or
				move_y(x-1, y+1, visited) or
				move_y(x  , y-1, visited) or
				move_y(x  , y+1, visited) or
				move_y(x+1, y-1, visited) or
				move_y(x+1, y  , visited)
			else
				false
			end
		end
	end
end