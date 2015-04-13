class Person
	attr_reader :name
	attr_accessor :age

	def initialize(name,age)
		@name = name
		@age = age
 	end
 end

 jacob = Person.new("Jacob",38)
 puts jacob.name