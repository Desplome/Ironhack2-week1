class Object
	def salute
		"hello, Im a " + "#{self.class}"
	end
end



class String
	def say_ya!
		puts "yaaaay"
	end

	def hola
		puts "hola"
	end
end

class Prueba
		def my_method(*args)
			puts "The args are in a: #{arg.class}"
			puts "you have sent: "
		end
end




class Dummy
	def method_missing(m, *args, &block)
		puts "There's no method called #{m} here -- please try again."
	end



end 







