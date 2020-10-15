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
          if @my_board.a1.valeur == "X" || @my_board.a1.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.a1.valeur = "X"
            break
          end
        elsif choix == "A2"
          if @my_board.a2.valeur == "X" || @my_board.a2.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.a2.valeur = "X"
            break
          end
        elsif choix == "A3"
          if @my_board.a3.valeur == "X" || @my_board.a3.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.a3.valeur = "X"
            break
          end
        elsif choix == "B1"
          if @my_board.b1.valeur == "X" || @my_board.b1.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.b1.valeur = "X"
            break
          end
        elsif choix == "B2"
          if @my_board.b2.valeur == "X" || @my_board.b2.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.b2.valeur = "X"
            break
          end
        elsif choix == "B3"
          if @my_board.b3.valeur == "X" || @my_board.b3.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.b3.valeur = "X"
            break
          end
        elsif choix == "C1"
          if @my_board.c1.valeur == "X" || @my_board.c1.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.c1.valeur = "X"
            break
          end
        elsif choix == "C2"
          if @my_board.c2.valeur == "X" || @my_board.c2.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.c2.valeur = "X"
            break
          end
        elsif choix == "C3"
          if @my_board.c3.valeur == "X" || @my_board.c3.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.c3.valeur = "X"
            break
          end
        else
          puts "!!!!désolé cette case est invalide!!!!!"
        end

      end
    end

    def menu2
      while true
        puts "   =================choix=================="
        puts "   #{@player2.name} Quelle action veux-tu effectuer ?\n\n"
        puts "     A1       -       A2      -      A3\n"
        puts "     B1       -       B2      -      B3\n"
        puts "     C1       -       C2      -      C3\n"
        choix = gets.chomp
        if choix == "A1"
          if @my_board.a1.valeur == "X" || @my_board.a1.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.a1.valeur = "O"
            break
          end
        elsif choix == "A2"
          if @my_board.a2.valeur == "X" || @my_board.a2.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.a2.valeur = "O"
            break
          end
        elsif choix == "A3"
          if @my_board.a3.valeur == "X" || @my_board.a3.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.a3.valeur = "O"
            break
          end
        elsif choix == "B1"
          if @my_board.b1.valeur == "X" || @my_board.b1.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.b1.valeur = "O"
            break
          end
        elsif choix == "B2"
          if @my_board.b2.valeur == "X" || @my_board.b2.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.b2.valeur = "O"
            break
          end
        elsif choix == "B3"
          if @my_board.b3.valeur == "X" || @my_board.b3.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.b3.valeur = "O"
            break
          end
        elsif choix == "C1"
          if @my_board.c1.valeur == "X" || @my_board.c1.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.c1.valeur = "O"
            break
          end
        elsif choix == "C2"
          if @my_board.c2.valeur == "X" || @my_board.c2.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.c2.valeur = "O"
            break
          end
        elsif choix == "C3"
          if @my_board.c3.valeur == "X" || @my_board.c3.valeur == "O"
            puts "!!!!désolé cette case est invalide!!!!!"
          else
            @my_board.c3.valeur = "O"
            break
          end
        else
          puts "!!!!désolé cette case est invalide!!!!!"
        end
      end

     end
  def plateau
    @my_board.plateau
  end

  def winner
    if (@my_board.a1.valeur == "O" && @my_board.a2.valeur == "O" && @my_board.a3.valeur == "O") || (@my_board.b1.valeur == "O" && @my_board.b2.valeur == "O" && @my_board.b3.valeur == "O") || (@my_board.c1.valeur == "O" && @my_board.c2.valeur == "O"  &&  @my_board.c3.valeur == "O")
      puts"!!!!#{@player2.name} a gagné !!!!"
      return true

    elsif (@my_board.a1.valeur == "O" && @my_board.b1.valeur == "O" && @my_board.c1.valeur == "O") || (@my_board.a2.valeur == "O" && @my_board.b2.valeur == "O" && @my_board.c2.valeur == "O") || (@my_board.a3.valeur == "O" && @my_board.b3.valeur == "O"  &&  @my_board.c3.valeur == "O")
      puts"!!!!#{@player2.name} a gagné !!!!"
      return true

    elsif (@my_board.a1.valeur == "O" && @my_board.b2.valeur == "O" && @my_board.c3.valeur == "O") || (@my_board.a3.valeur == "O" && @my_board.b2.valeur == "O" && @my_board.c1.valeur == "O")
      puts"!!!!#{@player2.name} a gagné !!!!"
      return true

    elsif (@my_board.a1.valeur == "X" && @my_board.a2.valeur == "X" && @my_board.a3.valeur == "X") || (@my_board.b1.valeur == "X" && @my_board.b2.valeur == "X" && @my_board.b3.valeur == "X") || (@my_board.c1.valeur == "X" && @my_board.c2.valeur == "X"  &&  @my_board.c3.valeur == "X")
        puts"!!!!#{@player1.name} a gagné !!!!"
        return true

    elsif (@my_board.a1.valeur == "X" && @my_board.b1.valeur == "X" && @my_board.c1.valeur == "X") || (@my_board.a2.valeur == "x" && @my_board.b2.valeur == "X" && @my_board.c2.valeur == "X") || (@my_board.a3.valeur == "X" && @my_board.b3.valeur == "X"  &&  @my_board.c3.valeur == "X")
        puts"!!!!#{@player1.name} a gagné !!!!"
        return true

    elsif (@my_board.a1.valeur == "X" && @my_board.b2.valeur == "X" && @my_board.c3.valeur == "X") || (@my_board.a3.valeur == "X" && @my_board.b2.valeur == "X" && @my_board.c1.valeur == "X")
        puts"!!!!#{@player1.name} a gagné !!!!"
        return true
    end
  end



end
