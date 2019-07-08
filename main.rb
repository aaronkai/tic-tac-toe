require '/home/cabox/workspace/tic-tac-toe/board.rb'
require '/home/cabox/workspace/tic-tac-toe/player.rb'
require '/home/cabox/workspace/tic-tac-toe/game.rb'


player1 = Player.new("X Player", "X")
player2 = Player.new("O Player", "O")
game_board = Board.new
game = Game.new(player1, player2, game_board)
game.play

