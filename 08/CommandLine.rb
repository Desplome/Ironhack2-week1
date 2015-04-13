
class Login
	def initialize(user,pwd)
		@user = user
		@pwd = pwd
	end

	def login
		chek_login(gets_user_imput)
	end
	

	def gets_user_imput
		puts "Insert User"
		user = gets.chomp
		puts "Insert Pwd"
		pwd = gets.chomp
		keys=[user,pwd]
	end

	def chek_login(keys)
		if keys[0] == @user && keys[1] == @pwd
			true
		else
			false 
		end
	end
end

class Panel
	def initialize(login)
		@login = login
	end

	def present_menu_panel
		
		if @login.login 
			puts "*"*50
			puts "Menu"
			
		else
			puts "User or Password Incorrect"
		end

	end

	def display_menu
		puts "*"*50
		puts "Menu"


	end

	def create_menu

		available_actions = {words_counter: WordsCounter.new,letters_counter: LettersCounter.new}
		menu = available_actions.map do |key,value|
				available_actions.value



	end
end


class WordsCounter

	def initialize
		@description = "Counter Words"
	end
	puts "Insert text:"
	text=gets.chomp.split(" ")
	puts text.length	
end


class LettersCounter
	def initialize
		@description = "Counter Letters"
	end
end

class TextsReverser
	def initialize
		@description = "Text Reverse"
	end
end

class Uppercaser
end

class Lowercaser
end















my_panel = Panel.new(Login.new("pepe", "patata")).present_menu_panel







=begin
class CommandLine

	def initialize(user,pwd)
		@user = user
		@pwd = pwd
	end

	def login
		chek_login(gets_user_imput)
	end

	def gets_user_imput
		puts "Insert User"
		user = gets.chomp
		puts "Insert Pwd"
		pwd = gets.chomp

		keys=[user,pwd]
	end

	def chek_login(keys)
	
		if keys[0] == @user && keys[1] == @pwd
			present_menu_panel
		else
			puts "User or Password Incorrect"
		end
	end


	def present_menu_panel
		puts "Insert text:"
		text=gets.chomp.split(" ")
		puts text.length	
		
	end

end

=end