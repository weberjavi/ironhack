##########################################
# => CHESS VALIDATOR
##########################################
require "pry"
#Para crear el tablero iniciamos un nuevo array de 8 elementos que contiene otro array de 8 elementos con el valor "cell"
board = Array.new(8){Array.new(8, "cell")}

=begin
En pantalla se vería algo así

board.each do |cell|
	print cell
	puts ""
end

["cell", "cell", "cell", "cell", "cell", "cell", "cell", "cell"]
["cell", "cell", "cell", "cell", "cell", "cell", "cell", "cell"]
["cell", "cell", "cell", "cell", "cell", "cell", "cell", "cell"]
["cell", "cell", "cell", "cell", "cell", "cell", "cell", "cell"]
["cell", "cell", "cell", "cell", "cell", "cell", "cell", "cell"]
["cell", "cell", "cell", "cell", "cell", "cell", "cell", "cell"]
["cell", "cell", "cell", "cell", "cell", "cell", "cell", "cell"]
["cell", "cell", "cell", "cell", "cell", "cell", "cell", "cell"]
=end

module LegalMoves

	def horizontal_legal_move
		@init_position[0] == final_position[0] || @init_position[1] == final_position[1] 
	end

	def diagonal_legal_move
		(@init_position[0] - final_position[0]).abs == (@init_position[1] - final_position[1]).abs
	end
end

class Piece
	attr_accessor :init_position, :final_position
	def initialize(init_position)
		@init_position = init_position
		@final_position = []
	end

	def chek_move(final_position)
		@final_position = final_position
		if self.legal_move
			puts "LEGAL"
		else
			puts "ILLEGAL"
		end	
	end
end

class Rook < Piece
	include LegalMoves
	def legal_move
		horizontal_legal_move		
	end
end

class Bishop < Piece
	include LegalMoves
	def legal_move
			diagonal_legal_move		
	end
end

class Queen < Piece
	include LegalMoves
	def legal_move
		horizontal_legal_move	|| diagonal_legal_move	
	end
end

torre = Rook.new([0,0])
torre.chek_move([0,1])

alfil = Bishop.new([1,4])
alfil.chek_move([6,0])

reina = Queen.new([3,4])
reina.chek_move([3,7])



