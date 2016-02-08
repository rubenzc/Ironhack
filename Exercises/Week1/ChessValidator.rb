# class Board
#   def initialize
#     #Create a 2 dimensional array as grid
arr_board = Array.new(8) { Array.new(8, "cell") }

#     board.each do |cell|
#       print cell
#       puts ""
#     end

#   end
# end

#Módulo LegalMoves donde vamos a comparar la posición inicial y la final
module LegalMoves
  #Comprueba el movimiento horizontal
  def horizontal_move
    @initial_pos[1] == @final_pos[1]
  end
  #Comprueba el movimiento vertical
  def vertical_move
    @initial_pos[0] == @final_pos[0] 
  end
  #Comprueba el movimiento diagonal
  def diagonal_move
    (@initial_pos[0] - @final_pos[0]).abs == (@initial_pos[1] - @final_pos[1]).abs
  end
  #Comprueba el movimiento diagonal
  def knight_move
    !(horizontal_move or vertical_move) && (((@initial_pos[0] - @final_pos[0]).abs) < 3 && ((@initial_pos[1] - @final_pos[1]).abs) < 3)
  end

end

#Clase pieza
class Piece
  attr_accessor :initial_pos, :final_pos
  #Aquí le vamos a pasar la posición inicial de la pieza
  #El final_pos será un array donde se guarde la posición final para luego compararlas con el módulo LegalMoves
  def initialize (initial_pos)
    @initial_pos = initial_pos
    @final_pos = []
  end

  #Este método recibe la posición final del array (Con la que hay que comparar la inicial)
  def check_move (final_pos)
    @final_pos = final_pos

    #Llamo al método legal_move de la clase Torre para que posteriormente llame a horizontal_move
    if self.legal_move
      puts "Legal"
    else
      puts "Illegal"
    end
  end
end

#Clase torre
class Rook < Piece
  #Llamada al módulo LegalMoves
  include LegalMoves
  def legal_move
    horizontal_move
    vertical_move
  end
end

#Clase alfil
class Bishop < Piece
  #Llamada al módulo LegalMoves
  include LegalMoves
  def legal_move
    diagonal_move
  end
end

#Clase alfil
class Queen < Piece
  #Llamada al módulo LegalMoves
  include LegalMoves
  def legal_move
    diagonal_move
    horizontal_move
    vertical_move
  end
end

#Clase Knight
class Knight < Piece
  include LegalMoves
    def legal_move
      knight_move
    end
end


#Creo un objeto Rook y posteriormente llamo al método check_move
torre1 = Rook.new([0,0])
torre1.check_move([0,1])

#Creo un objeto Rook y posteriormente llamo al método check_move
alfil1 = Bishop.new([3,5])
alfil1.check_move([2,1])

#Creo un objeto Queen y posteriormente llamo al método check_move
queen1 = Queen.new([3,0])
queen1.check_move([0,1])

#Creo un objeto Queen y posteriormente llamo al método check_move
knight = Knight.new([3,0])
knight.check_move([2,2])