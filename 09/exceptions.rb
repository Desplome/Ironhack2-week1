class Console


		def get_numbers
			num1 = gets.chomp.to_i
			num2 = gets.chomp.to_i
			Division.new.div(num1,num2)
		end
end

class Division
	
	def div(num1, num2)
		begin
		res = num1 / num2
		rescue
	
		ensure
		puts "hola siempre se ejecuta"
		end	
		puts res
	end

		
end

my_console = Console.new
my_console.get_numbers
