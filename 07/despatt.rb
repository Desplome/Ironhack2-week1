require "pry"

class User

	attr_reader :nombre,:email,:twitter,:facebook
	
	def initialize(nombre,email,twitter,facebook)
		@nombre=nombre
		@email=email
		@twitter=twitter
		@facebook=facebook
	end
end

class MailNotificator

	def send_message
		puts "I'm notifying you using mail"
	end
	
end

class TwitterNotificator
	def send_message
		puts "I'm notifying you using Twitter"
	end
end

class FacebookNotificator
	def send_message
		puts "I'm notifying you using Facebook"
	end
end

class NotificatorFactory

	def self.from_user(user)
		
		if user.email
			MailNotificator.new
		elsif user.twitter
			TwitterNotificator.new
		elsif user.facebook
			FacebookNotificator.new
		else
			puts"No es posible notificar"
		end
	end		

end



########
# Marketing

pepe = User.new("Pepe",nil,"@pepito","peperodriguez")


notificator = NotificatorFactory.from_user(pepe)
notificator.send_message
notificator.send_message