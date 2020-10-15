require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'game'
require 'board'
require 'board_case'

b = "Y"
while b == "Y"

  my_game = Game.new
  a = 0
  while a != 5
    my_game.plateau
    my_game.menu
    if my_game.winner == true
      break
    end
    break if a == 4
    my_game.plateau
    my_game.menu2
    if my_game.winner == true
      break
    end

    a += 1
  end

  puts "veux tu rejouer ? (Y/n)"
  b = gets.chomp
end
