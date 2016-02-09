
require "sinatra"

require "sinatra/reloader" if development? # Comprueba si el servidor está en desarrollo y en cuanto haces un cambio se resetea el servidor
require "pry" if development?
enable(:sessions) #De este modo guardamos las sesiones (cookies)




# Lo que devuelva el bloque get será lo que reciba el navegador
get "/" do
	"My first sinatra app"
end

# El parámetro introducido después del get será la ruta de la página a mostrar
get "/about" do
	"Esta es la primera prueba con sinatra"
end

get "/aut" do
	erb (:author) # Lo que va dentro del erb es el nombre del archivo de la plantilla
end

#Podemos realizar cierta lógica dentro de nuestro get para luego mostrarlo en la página
# Esto lo hacemos a través de variables de instancia
# Las variables que no queramos que se muestren no tienen que ser variables de instancia
get "/hello" do
	@greetings = "hello world"
	@ingredients = ["tomates", "peras"]
	erb(:hello)
end


get "/pizza" do
	@ingredients = ["tomates", "peras"]
	erb(:pizza)
end

# Parámetros en la url
# La variable en la url se introducirá con dos puntos delante
get "/users/:username" do 
    @user = params[:username]# Params es la key de un hash
	erb(:user_profile)
end

get "/sum/:num1/:num2" do
	@num1 = params[:num1].to_i
	@num2 = params[:num2].to_i
	@sum = @num1 + @num2
	erb(:suma)
end

get "/hours/ago/:hours" do
	@hours = params[:hours].to_i 
	@delay = Time.now.strftime("%H").to_i - @hours
	erb(:hours_ago)
end

get "/status_tetera" do
	status(418)
	"I'm a tea pot"
end
# Estas sesiones te permiten guardar parámetros en un hash para poder recuperarlos posteriormente
# 
get "/sessions_test" do 
    session[:saved_value]
end

get "/sessions_test/:text" do 
	text = params[:text]
    session[:saved_value] = text
end

