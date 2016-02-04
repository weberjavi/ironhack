#############################
# DATA STRUCTURES
#############################

# #Este es el tipo de acceso habitual
# arr = [
#   "Thing #0",
#   "Thing #1",
#   "Thing #2",
#   "Thing #3"
# ]

# puts arr[2]
# #=> "Thing #2"

# #Se pueden llamar los métodos de string sobre el identificador de la misma dentro del array
# puts arr[2].size #=> 8
# puts arr[2].upcase #=> "THING #2"

# #Arrays dentro de arrays
# arr = [
#   [    "a",        "b",            "c"     ], # 0
#   [     1,          2 ,             3      ], # 1
#   [  "pizza",  "asparagus", "chicken wings"], # 2
#   [ "coffee",     "tea",          "cola"   ]  # 3
#   #     0           1              2
# ]


# p arr[2]             #=> [ "pizza", "asparagus", "chicken wings" ]
# puts arr[2][0]       #=> "pizza"
# puts arr[2][2]       #=> "chicken wings"
# puts arr[2].size     #=> 3
# puts arr[2].reverse  #=> [ "chicken wings", "asparagus", "pizza" ]

# #EXERCICE
# puts hash[:wat][2][:wut][1][0][9][:bbq]
# puts arr[0][5][:secret][:unlock][1]

# hash = { wat: [0, 1, { wut:[ 0, [ [0, 1, 2, 3, 4, 5, 6, 7, 8, {bbq: "Estoy aquí"}]]]}, 3]}
# arr = [[0, 1, 2, 3, 4, {secret:{unlock:[0, "Estoy aquí"]}}]]

#EXERCICE
# Create a class CarDealer which has an inventory of cars. We want to be able to quickly locate all Cars of a given brand to show them to customers.

# We should be able to get all the cars of a brand with
# car_dealer.cars("Ford")

# We also need a method to print the inventory in a form like
# Ford: Fiesta, Mustang
# Seat: Ibiza, Leon, Toledo

### OPCIÓN 1

class CarDealer
  def initialize(inventory)
    @inventory = inventory
  end
​
  def cars(brand)
    @inventory[brand.downcase.to_sym]
  end
​
  def pretty_print_inventory
     @inventory.each do |brand, models|
      puts "#{brand}: #{models.join(", ")}"
    end
​
  end
​
end
​
​
inventory = {
  ford: [
    { model: "fiesta",  year: 2010,  license: "ASD123" },
    { model: "mustang", year: 2011,  license: "OKD123" },
    { model: "fiesta",  year: 2012,  license: "HYD123" },
  ],
  tesla: [
    { model: "S",       year: 2014,  license: "FYS123" }
  ],
  mini: [
    { model: "Cooper",  year: 2011,  license: "WQA123" }
  ]
}
​
​
​
car_dealer = CarDealer.new(inventory)
puts car_dealer.cars("Ford").inspect
puts "-------------"
puts car_dealer.pretty_print_inventory

#### OPCIÓN 2

class CarDealer
  def initialize(inventory)
    @inventory = inventory
  end
​
  def cars(brand)
    @inventory.select { |car| car[:brand].downcase == brand.downcase }
  end
​
  def pretty_print_inventory
    pretty_print_inventory = {}
    @inventory.each do |car|
      brand = car[:brand].downcase
      pretty_print_inventory[brand] ||= []
      pretty_print_inventory[brand] << car[:model].downcase.capitalize
    end
​
    pretty_print_inventory.each do |brand, models|
      puts "#{brand}: #{models.join(", ")}"
    end
  end
​
end
​
​
inventory = [
  { brand: "Ford",  model: "fiesta",  year: 2010,  license: "ASD123" },
  { brand: "Ford",  model: "mustang", year: 2011,  license: "OKD123" },
  { brand: "Tesla", model: "S",       year: 2014,  license: "FYS123" },
  { brand: "Mini",  model: "Cooper",  year: 2011,  license: "WQA123" },
]
​
car_dealer = CarDealer.new(inventory)
puts car_dealer.cars("Ford").inspect
puts car_dealer.pretty_print_inventory







