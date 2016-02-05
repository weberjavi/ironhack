##########################################
# => CHESS VALIDATOR
##########################################
require "pry"

class Board
	attr_reader :board
	def initialize(board)
		@board_file = File.open(board, "r").readlines
		@board = @board_file.collect {|element| element.split}
	end

	def chessboard
		@board = @board.collect do |i|
			i.collect do|element| 
				if element == "--"
					nil
				else
					element.to_sym
				end
			end
		end
	end

end

 tablero = Board.new("simple-board.txt")
 puts tablero.chessboard


module LegalMoves

	def horizontal_legal_move
		@init_position[0] == final_position[0] || @init_position[1] == final_position[1] 
	end

	def diagonal_legal_move
		(@init_position[0] - final_position[0]).abs == (@init_position[1] - final_position[1]).abs 
	end

	def knight_move
		!(horizontal_legal_move || diagonal_legal_move) && ((@init_position[0] - final_position[0]).abs) < 3 && ((@init_position[1] - final_position[1]).abs) < 3
	end

	def king_move
		(horizontal_legal_move || diagonal_legal_move) && ((@init_position[0] - final_position[0]).abs) < 2 && ((@init_position[1] - final_position[1]).abs) < 2
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

class Knight < Piece
	include LegalMoves
	def legal_move	
		knight_move
	end
end

class King < Piece
	include LegalMoves
	def legal_move	
		king_move
	end
end



torre = Rook.new([0,0])
torre.chek_move([0,1])

alfil = Bishop.new([1,4])
alfil.chek_move([6,0])

reina = Queen.new([3,4])
reina.chek_move([3,7])

caballo = Knight.new([1,0])
caballo.chek_move([2,2])

rey = King.new([3,3])
rey.chek_move([3,4])











