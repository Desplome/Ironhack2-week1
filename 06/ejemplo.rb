class Car #puedes ser GreenCar y no Gree_Car

	def initialize(noise)
		@noise = noise
		@cities = []
		
	end

	def make_noise	# snake_case convencion para metodos
		puts @noise
	end

	def self.make_noise_twice (car)
		car.make_noise
		car.make_noise
	end

	def cities (cities)
		@cities.push(cities)  #@cities << cities
		puts @cities
	end
end


class RacingCar < Car

	def initialize
		@noise = "iommm"
	end


	def make_noise	
		puts @noise
	end

end

=begin
car = Car.new  #la sintaxis parar llamar un metodo es el punto,   # new ws un metodo de clase
car.make_noise  # podriamos hacer Car.new.make_noise

=end
car= Car.new("Broommm")   #los parentesis siempre pegados IMPORTANTE!!!!
car.make_noise
noisecar=Car.new("BROOOOOOOMM") #los parentesis siempre pegados IMPORTANTE!!!!
noisecar.make_noise
noisecar.cities("Berlin")


noisecar.cities("Barcelona") #los parentesis siempre pegados IMPORTANTE!!!!
noisecar.cities("Madrid")
noisecar.cities("Paris") #los parentesis siempre pegados IMPORTANTE!!!!
noisecar.cities("Roma")

Car.make_noise_twice(noisecar)

formula1 = RacingCar.new
formula1.make_noise