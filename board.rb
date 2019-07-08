class Board
  attr_accessor :board
  
	def initialize
		@board = [[1,2,3],[4,5,6],[7,8,9]]
	end
  	
	def mark_board(choice, mark)
		@board.each do |row|
			row.map! { |cell| cell == choice ? mark : cell }
		end
	end
	
	def winner
    	@board.each do |row|
			  #checks Horizontal rows 
 			  if row.join.to_s == "XXX"
          return "XXX"
        elsif row.join.to_s == "OOO"
				  return "OOO"
			  end
      end
    #checks vertical rows
     if "#{@board[0][0]}#{@board[1][0]}#{@board[2][0]}" == "XXX" ||
        "#{@board[0][1]}#{@board[1][1]}#{@board[2][1]}" == "XXX" || 
        "#{@board[0][2]}#{@board[1][2]}#{@board[2][2]}" == "XXX" || 
        "#{@board[0][0]}#{@board[1][1]}#{@board[2][2]}" == "XXX" || 
        "#{@board[0][2]}#{@board[1][1]}#{@board[2][0]}" == "XXX"
       return "XXX"
     #checks diags
     elsif  "#{@board[0][0]}#{@board[1][0]}#{@board[2][0]}" == "OOO" ||
             "#{@board[0][1]}#{@board[1][1]}#{@board[2][1]}" == "OOO" || 
             "#{@board[0][2]}#{@board[1][2]}#{@board[2][2]}" == "OOO" || 
             "#{@board[0][0]}#{@board[1][1]}#{@board[2][2]}" == "OOO" || 
             "#{@board[0][2]}#{@board[1][1]}#{@board[2][0]}" == "OOO"
       return "OOO"
     else 
       return false
     end
  end
	
	def to_s
    @board.each do |row|
      row.each do |cell|
        print " #{cell} "
      end
      print "\n"
    end
		return ""
  end
		
end

