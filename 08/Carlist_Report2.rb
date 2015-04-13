class Car
	def initialize(sound)
		@sound = sound

	end
end

class CarListReport

	def initialize(formatter,list)
		@formatter=formatter
		@lis=list
	end
	
	def output_report 

	end
end

class HTMLReport
	def give_formatter(list)
		@report = list.map |list| list.sound
		puts "html:   " + 
	end
end

class MarkDownReport
	def give_formatter
		puts "html"
	end

end


car1 = Car.new("Broom")
car2 = Car.new("BeepBeeep")
car3 = Car.new("Nyammmmmmm")
cars=[car1,car2,car3]

CarList.new(HTMLReport.new).getformatter