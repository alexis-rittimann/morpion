require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'game'
require 'board'
require 'board_case'



my_game = Game.new
a = 0
while a != 5
  my_game.plateau
  my_game.menu
  break if a == 4
  my_game.plateau
  my_game.menu2

  #break if my_game.win == true

  a += 1
end
