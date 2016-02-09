##########################
# UNIT TESTING
##########################

# Forma automática de probar tus progrmas
# Conociendo la entrada y la salida ejecutamos un código que nos dará acierto o error
# class StringCalculator
# 	def initialize 
# 	end
# 	def add_numbers(string)
# 		string = string.split()
# 		# numeros = string.reduce(0) {|memo, num| memo + num.to_i}
# 		sum_num = 0
# 		numeros = string.map {|num| sum_num = sum_num + num.to_i}
# 		sum_num
# 	end
# end


#  if 5 == StringCalculator.new.add_numbers("3, 2")
#  	puts "Funciona"
#  else
#  	puts "esta roto"
#  end

#   if 0 == StringCalculator.new.add_numbers("")
#  	puts "Funciona"
#  else
#  	puts "esta roto"
#  end


#   if 20 == StringCalculator.new.add_numbers("3, 2, 7, 8")
#  	puts "Funciona"
#  else
#  	puts "esta roto"
#  end


 #####
 # RSpec
 #####

 require "rspec"


#  RSpec.describe "String calculator" do
#     it "returns 0 for the empty string" do #En el it introducimos cual es la funcionalidad que esperamos
#         expect(StringCalc.new.add("")).to eq(0) #En el expect introducimos el código que queremos comprobar
#     end
#     it "returns 3 for only that number" do
#         expect(StringCalc.new.add("3")).to eq(3)
#     end
# end

class StringCalculator
	def add_numbers(string)
		string = string.split()
		numeros = string.reduce(0) {|memo, num| memo + num.to_i}
		numeros
	end
end



RSpec.describe "StringCalculator" do

	# before :each do
	# 	@calculator = StringCalculator.new
	# end

	let (:calculator) {StringCalculator.new} # let crea un método calculator que se ejecuta cuando lo llamas. Es como el before :each pero sólo se ejecuta si lo llamas

	before :all do    
		# Aquí se añadirían condiciones que queremos que se cumplan ante de ejecutartodos los test
	# end

	it "returns 0 for the empty string" do
		expect(calculator.add_numbers("")).to eq(0)
	end

	it "returns 3" do
		expect(calculator.add_numbers("3")).to eq(3)
	end

	it "returns 8" do
		expect(calculator.add_numbers("4, 2, 2")).to eq(8)
	end

	it "returns 8" do
		expect(StringCalculator.new.add_numbers("4, 2")).to eq(8)
	end

	# after :all do
	# end

	# after :each do
	# end
end















