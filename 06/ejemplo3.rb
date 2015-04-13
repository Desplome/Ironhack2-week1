class Car

	attr_reader :noise

	def initialize(noise)
		@noise = noise
	end 

	def make_noise
		@noise = "Broomm"
	end

end

garage = []

garage.each do |item|
	Car.make_noise
end

car1 = Car.new("Broomm")
car2 = Car.new("Broomm")
car3 = Car.new("Broomm")

garage.push(car1)
garage.push(car2)
garage.push(car3)

sounds = ["Broomm","Meek","Nyan"]
#Creat an array de cars each of one making the noise in the string

cars = sounds.map do |sound|    #cars= sounds.map {|sound| Car.new(sound)}
	Car.new(sound)
end

puts cars.reduce(""){|sum,sound|sum + sound.noise}
