#/server.rb

require "sinatra"

#require "sinatra/reloader" if development? # Comprueba si el servidor está en desarrollo y en cuanto haces un cambio se resetea el servidor
#require "pry" if development?
#enable(:sessions) #De este modo guardamos las sesiones (cookies)

get "/" do
  "Hola mundo"
end

get "/real_page" do
  "Esta página existe"
end

get "/hi" do
  redirect "/real_page"
end
