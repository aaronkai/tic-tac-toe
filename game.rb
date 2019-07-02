class Game
	def initialize(player1, player2, board)
		@player1 = player1
		@player2 = player2
		@board = board
		@winner = false
	end
#while winner = false
	def play(player1, player2, board)
		until winner?(board)
			player1.turn(board)
			break if winner?(board)
		#check for Winner
			player2.turn(board)
		#check for winner
		end
	end
	

	
end