require './question'
require './player'
require './game'

p1 = Player.new("Amy", "Seriously? No!")
p2 = Player.new("Bob", "ZOMG No NO NO!")
question = Question.new
game = Game.new(p1, p2, question)

game.start_game