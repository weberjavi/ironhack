# server.rb
require "sinatra"
require "sinatra/reloader" if development? # Comprueba si el servidor está en desarrollo y en cuanto haces un cambio se resetea el servidor
require "pry" if development?
require_relative "lib/calculator.rb"

get "/" do
  erb(:add)
end

post "/operation" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	@operation = params[:btn]
	@message = "# If you #{@operation}  #{first} and #{second} you've got #{result}"	

	if @operation == "add"
		Calculator.new(first, second).add
		"# La suma de #{first} más #{second} tiene un resultado de #{result}"
	elsif @operation == "substract"
		Calculator.new(first, second).substract
		"# La resta de #{first} menos #{second} tiene un resultado de #{result}"
	elsif @operation == "divide"
		Calculator.new(first, second).divide
		"# La división de #{first} entre #{second} tiene un resultado de #{result}"	
	elsif @operation == "multiply"
		Calculator.new(first, second).multiply
	end
	
	erb(:result)

end

