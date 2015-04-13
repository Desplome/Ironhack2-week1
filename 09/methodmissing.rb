class MagicObject

	def initialize
		@my_hash= {}	
	end	

	def method_missing(m,*args,&block)

		if !args.empty?
				@my_hash[m] = args[0]
				#puts @my_hash
		else
			@my_hash[m]
		end
	end


end


#Dummy.new.whaaaat
magic=MagicObject.new
magic.algo 2
puts magic.algo