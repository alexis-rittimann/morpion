require 'bundler'
Bundler.require

class Board
 attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3

  def initialize
    @a1 = BoardCase.new(1)
    @a2 = BoardCase.new(2)
    @a3 = BoardCase.new(3)
    @c1 = BoardCase.new(4)
    @c2 = BoardCase.new(5)
    @c3 = BoardCase.new(6)
    @b1 = BoardCase.new(7)
    @b2 = BoardCase.new(8)
    @b3 = BoardCase.new(9)

  end

  def plateau
    puts "=".colorize(:light_blue) * 60
    print " " * 20+"|"+" " * 20+"|\n"
    print " " * 9 + "#{@a1.valeur}"+" " * 10+"|"+" " * 9+"#{@a2.valeur}"+" " * 10+"|"+" " * 9+"#{@a3.valeur}\n"
    puts "=".colorize(:light_blue) * 60
    print " " * 20+"|"+" " * 20+"|\n"
    print " " * 9 + "#{@b1.valeur}"+" " * 10+"|"+" " * 9+"#{@b2.valeur}"+" " * 10+"|"+" " * 9+"#{@b3.valeur}\n"
    puts "=".colorize(:light_blue) * 60
    print " " * 20+"|"+" " * 20+"|\n"
    print " " * 9 + "#{@c1.valeur}"+" " * 10+"|"+" " * 9+"#{@c2.valeur}"+" " * 10+"|"+" " * 9+"#{@c3.valeur}\n"
    puts "=".colorize(:light_blue) * 60
  end


end
