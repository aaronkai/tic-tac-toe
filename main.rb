require '/home/cabox/workspace/tic-tac-toe/board.rb'
require '/home/cabox/workspace/tic-tac-toe/player.rb'
require '/home/cabox/workspace/tic-tac-toe/playGame.rb'


player1 = Player.new("X Player", "X")
player2 = Player.new("O Player", "O")
game_board = Board.new
game = PlayGame.new

game.play(player1, player2, game_board)

