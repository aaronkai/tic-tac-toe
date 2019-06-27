class Board
  attr_accessor :grid
  
	def initialize
		@grid = [[1,2,3],[4,5,6],[7,8,9]]
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