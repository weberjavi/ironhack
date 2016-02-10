#calculator.rb

class Calculator

	attr_accessor :first, :second
	
	def initialize(first, second)
		@first = first
		@second = second		
	end
	def add
		@first + @second
	end
	def substract
		@first - @second
	end
	def divide
		@first / @second
	end
	def multiply
		@first * @second
	end

end