require "sinatra"

require "sinatra/reloader" if development? # Comprueba si el servidor está en desarrollo y en cuanto haces un cambio se resetea el servidor
require "pry" if development?
require "artii"
require "sinatra"


get "/ascii/:one_random_word/?:font_family?/?:secret?" do 

	word = params[:one_random_word]
	font = params[:font_family] || "slant"
	secret = params[:secret]

	if word == "zorro" && font == "special" && secret == "secret"
		@fox = "/zorro.png"
	else
		artii = Artii::Base.new :font => font
		@artii_word = artii.asciify(word)	
	end
	
 erb(:artii)
end

