class Game
	def initialize(player1, player2, board)
		@player1 = player1
		@player2 = player2
		@board = board
		@winner = false
	end

	def turn(player, board)
		puts "\n"
		puts "#{player.name}'s turn."
		puts "Choose where to make your mark:"
		puts @board
		input = gets.chomp
		@board.mark_board(input.to_i,player.mark)
	end
	
	def play
		until @board.winner
			turn(@player1, @board)
			break if @board.winner
			turn(@player2, @board)
		end
    puts "#{@board.winner} is the winner. Game Over"
	end
	

	

	
end