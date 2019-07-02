class Board
  attr_accessor :board
  
	def initialize
		@board = [[1,2,3],[4,5,6],[7,8,9]]
	end
  	
	def mark_board(choice, mark)
		@grid.each do |array|
			array.map! { |cell| cell == choice ? mark : cell }#{ |cell| puts "#{cell} = #{choice}" }#
		end
	end
	
	def winner
		
	end
	
	def to_s
    @grid.each do |row|
      row.each do |cell|
        print " #{cell} "
      end
      print "\n"
    end
  end
		
end

