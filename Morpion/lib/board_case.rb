require 'bundler'
Bundler.require


class BoardCase

  attr_accessor :valeur, :position

  def initialize(valeur = " ", position)
    @valeur = valeur
    @position = [1,2,3,4,5,6,7,8,9]

  end

end
