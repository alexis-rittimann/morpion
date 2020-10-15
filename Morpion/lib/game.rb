require 'bundler'
Bundler.require

class Game
attr_accessor :my_board, :player1, :players2

  def initialize
    puts " >> Entrez le nom du player 1 :"
    name = gets.chomp
    signe = "X"
    @player1 = Player.new("#{name}","#{signe}")

    puts " >> Entrez le nom du player 2 :"
    name = gets.chomp
    signe = "O"
    @player2 = Player.new("#{name}","#{signe}")

    @my_board = Board.new
  end

  def menu

      while  true
        puts "   =================choix=================="
        puts "   #{@player1.name} Quelle action veux-tu effectuer ?\n\n"
        puts "     A1       -       A2      -      A3\n"
        puts "     B1       -       B2      -      B3\n"
        puts "     C1       -       C2      -      C3\n"
        choix = gets.chomp
        if choix == "A1"
          @my_board.a1.valeur = "X" if @my_board.a1.valeur == " " #&& @my_board.a1.valeur != "X" && @my_board.a1.valeur != "O"
          break
        elsif choix == "A2"
          @my_board.a2.valeur = "X" if @my_board.a2.valeur = " "
          break
        elsif choix == "A3"
          @my_board.a3.valeur = "X" if @my_board.a3.valeur = " "
          break
        elsif choix == "B1"
          @my_board.b1.valeur = "X" if @my_board.b1.valeur = " "
          break
        elsif choix == "B2"
          @my_board.b2.valeur = "X" if @my_board.b2.valeur = " "
          break
        elsif choix == "B3"
          @my_board.b3.valeur = "X" if @my_board.b3.valeur = " "
          break
        elsif choix == "C1"
          @my_board.c1.valeur = "X" if @my_board.c1.valeur = " "
          break
        elsif choix == "C2"
          @my_board.c2.valeur = "X" if @my_board.c2.valeur = " "
          break
        elsif choix == "C3"
          @my_board.c3.valeur = "X" if @my_board.c3.valeur = " "
          break
        else
          puts "!!!!désolé cette case est invalide!!!!!"
        end



      end
    end

    def menu2

      puts "   =================choix=================="
      puts "   #{@player2.name} Quelle action veux-tu effectuer ?\n\n"
      puts "     A1       -       A2      -      A3\n"
      puts "     B1       -       B2      -      B3\n"
      puts "     C1       -       C2      -      C3\n"
      choix = gets.chomp
      if choix == "A1"
        @my_board.a1.valeur = "O" if @my_board.a1.valeur = " "
        break
      elsif choix == "A2"
        @my_board.a2.valeur = "O"if @my_board.a2.valeur = " "
        break
      elsif choix == "A3"
        @my_board.a3.valeur = "O"if @my_board.a3.valeur = " "
        break
      elsif choix == "B1"
        @my_board.b1.valeur = "O"if @my_board.b1.valeur = " "
        break
      elsif choix == "B2"
        @my_board.b2.valeur = "O"if @my_board.b2.valeur = " "
        break
      elsif choix == "B3"
        @my_board.b3.valeur = "O"if @my_board.b3.valeur = " "
        break
      elsif choix == "C1"
        @my_board.c1.valeur = "O"if @my_board.c1.valeur = " "
        break
      elsif choix == "C2"
        @my_board.c2.valeur = "O"if @my_board.c2.valeur = " "
        break
      elsif choix == "C3"
        @my_board.c3.valeur = "O"if @my_board.c3.valeur = " "
        break
      end

     end
  def plateau
    @my_board.plateau
  end

  def win
    if (@my_board.a1 == O && @my_board.a2 == O && @my_board.a3 == O) || (@my_board.b1 == O && @my_board.b2 == O && @my_board.b3 == O) || (@my_board.c1 == O && @my_board.c2 == O && @my_board.c3 == O)
      return puts "YESS le joueur 2 a gagné"
    end
  end



end
