class Player
  attr_accessor :name, :mark
  
  def initialize(name, mark)
    @name = name
    @mark = mark
  end
  
	def turn(board)
		puts board
		puts "#{@name}, choose where to make your mark:"
		input = gets.chomp
		board.mark_board(input.to_i,player.mark)
	end
	
end
