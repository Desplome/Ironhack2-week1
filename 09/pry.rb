class Console

	def initialize(eval)
		@eval=eval
	end

	def ask
		@code = gets.chomp
	end

	def print
		puts @eval.evaluate(@code)
	end



end



class Eval

	def evaluate(code)
		eval code
	end

end

eval = Eval.new
console=Console.new(eval)
console.ask
console.print