require "imdb"
require 'pry'
class MoviesExtractor 

	def self.read_file
		file = File.open("movies.txt", "r")
		@peliculas = file.readlines
	end
	
	def self.print_lines
		puts @peliculas
	end

	def self.search_movies
		@peliculas.each do |movie|
		# busqueda = Imdb::Search.new(movie)[0]
		resultados_peliculas = []
		resultados_peliculas << Imdb::Search.new(movie).movies[0].raiting
		end

	end

end

MoviesExtractor.read_file
print = MoviesExtractor.print_lines

# godfather = Imdb::Search.new(@movies[0])
# i = Imdb::Search.new("The Godfather")
MoviesExtractor.search_movies
binding.pry

puts i.movies[0]
