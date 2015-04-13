class Car

	def initialize(engine)

		@engine = engine
	end

	def sound_of_car
		@engine.sound_of_engine
		puts "Sound of car"
	end
end

class Engine

	def sound_of_engine
		puts "Sound of engine"
	end
end

motor1 = Engine.new
car1 = Car.new(motor1)
car1.sound_of_car


