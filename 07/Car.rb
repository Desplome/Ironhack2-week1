class Car
	attr_reader :sound
	def initialize(sound)
		@sound = sound
	end
end

class CarListReport
	def initialize(formatter, list)
		@formatter = formatter
		@list = list
	end

	def output_report
		@formatter.give_format(@list)
	end
end


class HTMLFormatter
	def give_format(list)
		puts "<html>\n <body>\n  <ul>"
		list.each{|car| puts "<li> #{car.sound} </li>"}
		puts "  </ul> \n </body> \n</html>"
	end
end

class MarkdownFormatter
	def give_format(list)
		list.each{|car| puts "IN Markdown: #{car.sound}" }
	end
end

car1 = Car.new("MEK")
car2 = Car.new("PLOF")
car3 = Car.new("Nyaaaaaaaaaäáaaaaa")
cars = [car1, car2, car3]

report = CarListReport.new(HTMLFormatter.new, cars)

report.output_report