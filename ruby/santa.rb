
Santa.class
	
	def initialize 
		p "Initializing Santa instance ..."
	end 
	
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end 
	
	def eat_milk_and_cookies(cookie)
		p "That was a good *{<type of cookie here}!"
	end
	
end 

claus = Santa.new