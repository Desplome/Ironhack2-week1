require "pry"


def fizz_buzz(num_list)

	num_list.each do |x|
		num = ""
		
		if divisible(5,x) 
			num << "buzz"
		end
		
		if divisible(3,x) 
			num << "fizz"
		end
		
		if divisible(7,x) 
			num << "pum"
		end

		if num ==""
			num = x
		end
		puts num
	end
end


def divisible(div,num) 
	num % div == 0
end



num_list=(1..15)
fizz_buzz(num_list)
