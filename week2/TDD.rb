##################
# TDD
##################

# Write failing test => make the test pass => refactor (cambiar el código pero el comportamiento sigue siendo el mismo)
# Empieza siempre con el test más sencillo
# Dejarás de hacer test si no eres capaz de hacer un test que falla




# FizzBuzz
# Si es multiplo de 5 devuelve fizz
# Si es múltiplo de 3 devuelve buzz
# si no devuelve el número
require "rspec"



class FizzBuzz
	def numbers(number)
		result = ""
		if number % 3 == 0 
			result +="FizzBuzz"
		elsif number % 5 == 0
			"Buzz"
		elsif number % 3 == 0 
			"Fizz"
		else			
			number
		end
	end
end	


RSpec.describe "FizzBuzz" do

	let (:fizzbuzz) {FizzBuzz.new}

	it "Returns 1 if the number is 1" do
		expect(fizzbuzz.numbers(1)).to eq(1)
	end

	it "Returns the number" do
		expect(fizzbuzz.numbers(1)).to eq(1)
	end
	it "Returns Fizz if the number is multiple of 3" do
		expect(fizzbuzz.numbers(3)).to eq("Fizz")
	end
	it "Returns Buzz if the number is multiple of 5" do
		expect(fizzbuzz.numbers(5)).to eq("Buzz")
	end
	it "Returns FizzBuzz if the number is multiple of 3 and 5" do
		expect(fizzbuzz.numbers(15)).to eq("FizzBuzz")
	end

end



# Testa mos sólo la lógica de nuestra aplicación. No testamos las interfaces ni de donde sacamos los datos
# No testamos servicios externos. Si debemos realizar la llamada a una API simulamos las conexiones
# No se testan las librerías de terceros (se supone que los creadores de las librerias las testan ellos mismos)
# Separación de conceptos dentro del test
# No se prueban los detalle de implementación (Se prueba que lo hace No cómo lo hace // Quiero que tenga este método y me devuelva esto, me da igul cómo lo haga dentro)
# Antes de tocar un código legado (hecho por otros) se hace testing (antes de cambiar una sola linea)



############
# TEST DE INTEGRACIÓN
##########

# Aquí si que se comprueba si los componentes funcionan entre ellos
# Esto no son test unitarios (de pequeñas unidades de código), aqui si que se prueban APIS externas....













