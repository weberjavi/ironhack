# cart = ShoppingCart.new

# cart.add_item_to_cart :apple
# cart.add_item_to_cart :banana
# cart.add_item_to_cart :banana

# cart.show
# 1 apple: 10$
# 2 bananas: 40$

# cart.cost = 50


# apples     10$
# oranges     5$
# grapes     15$
# banana     20$
# watermelon 50$

require "pry"

#La clase carro acumulará los productos en un array inicialmente vacío
class ShoppingCart
	attr_accessor :item_list
	def initialize(precios)
		@precios = precios
		@item_list = {}
	end
	# Este método comprueba si existe un elemento en el carro. De ser así aumenta su valor en uno
	# de lo contrario lo crea y le otorga el valor uno
	def add_item_to_cart(item)
		if  @item_list.has_key?(item)
			@item_list[item] += 1
		else
			@item_list[item] = 1
		end
	end
	def cost
		#Suma el valor de todos los elementos añadidos al carro
		total = 0
		@item_list.each do |key, value|
			total += value * @precios[key]
		end
		puts total

	end
	def show
		#Muestra la lista de elementos introducidos en el carro
		index = 0
		@item_list.each do |key, value|
			index += 1
			puts "#{index}. #{key}  #{value * @precios[key]} "
		end
	end
	def discount
		@item_list.each do |item|
		if @item_list[item] == [:apple] && @item_list[item] % 2 == 0
			@precios[:apple] = @precios[:apple] / 2
		elsif @item_list[:oranges] % 3 == 0
			@precios[:oranges] = @precios[:oranges] * 0.33
		elsif @item_list[:grapes] == 4
			@item_list[:banana] += 1 
		end
	end
end
end


#Esta clase genera las ofertas que se aplican a los productos
class Offers
end




precios = {banana: 20, apple: 10, oranges: 5, watermelon: 50, grapes: 15}



cart = ShoppingCart.new(precios)
cart.add_item_to_cart :banana
cart.add_item_to_cart :apple
cart.add_item_to_cart :apple
cart.add_item_to_cart :oranges

		binding.pry
cart.cost



















