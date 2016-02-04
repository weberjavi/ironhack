require "pry"

class Character
	attr_reader(:nombre, :vida, :arma, :pantallas, :estancia_actual, :direccion)
	def initialize(nombre, vida, arma, pantallas)
		@estancia_actual = pantallas[:estancia1]
		@vida = vida
		@arma = arma
		@nombre = nombre
		@pantallas = pantallas
		@direccion = ""
		@objetos = []
	end
	def user_input_direction
		puts "Avanza en la dirección que desees (introduce N, S, E, O)"
		@direccion = gets.chomp.downcase
		self.movimiento
	end
	def movimiento
		if @estancia_actual[:salida].include?(@direccion.to_sym)
			@estancia_actual = @estancia_actual[:salida][@direccion.to_sym]
			puts "#{pantallas[@estancia_actual.to_sym][:descrip]}"
		else puts "A dónde vas #{@nombre} que por ahí no se va a ningún lado"
			 self.user_input_direction
		end
	end
	def buscar_comida	
	end
	def atacar	
	end
end

class Interfaz

end


pantallas = {   estancia1: {
	          	  salida: { s: "estancia3",
	          	  			e: "estancia2"
	          	  		  },
	          	  comida: false,
	          	  tesoro: false, 
	          	  descrip: "Te encuentras en una habitación ",
	          	  enemigo: false
	          	  objetos:["piedra", "medallón"]
	          	},
	          	estancia2: {
	          	  salida: false,
	          	  tesoro: "tres monedas de oro",
	          	  comida: false,
	          	  descrip: "Estás en la estancia 2",
	          	  enemigo: false
	          	  objetos: false
	          	},
	          	estancia3:{
	          	  salida: {n: "estancia1",
	          	  		   s: "estancia4",
	          	  		   o: "estancia5"
	          	  		   },
	          	  tesoro: false, 
	          	  comida: "un plato de pasta",
	          	  descrip: "pppppppppppppp",
	          	  enemigo: "troll"
	          	  objetos:["medallón"]
	          	},
	          	estancia4:{
	          		descrip: "MUERTE"
	          	},
	          	estancia5:{
	          		descrip: "LIBERTAD"
	          	}
}
Perico = Character.new("Perico", "15", "tirachinas", pantallas)

#Perico.inspect
Perico.user_input_direction









