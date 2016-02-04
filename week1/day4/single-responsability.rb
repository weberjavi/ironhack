# Create a command line tool.  
# This command line tool will ask you for a user and a password. 
# If it’s correct it will ask to enter a text and the program will count the number of words.

class Login
	def initialize (user, password)
	@user = "yo"
	@password = password
	end
	def good_password
		if @password == 1234
			puts "please enter a text"
			input = gets.chomp
			puts input.split.length
		else 
			puts "password incorrect"
	end
	end
end


puts "insert your password"
password =  gets.chomp.to_i
newLogin = Login.new("Federico", password)

newLogin.good_password