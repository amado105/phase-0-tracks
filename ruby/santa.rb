class Santa
	
	def initialize(gender, ethnicity) 
		p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		
	end 
	
	def speak
		p "#{@gender} Santa says: Ho, ho, ho! Haaaappy holidays!"
	end 
	
	def eat_milk_and_cookies(cookie)
		p "That was a good *{<type of cookie here}!"
	end
	
	def celebrate_birthday(age)
		@age = age + 1 
	end
	
	def get_mad_at(reindeer_name)
		reindeer_ranking.delete(reindeer_name)
		reindeer_ranking << reindeer_name
	end
	
	def gender=(new_gender)
		@gender = new_gender
	end
	
	def age
		@age
	end
	
	def ethnicity
		@ethnicity
	end
		
end 


=begin
santas = []
genders = ["agender", "female", "bigender", "male", "female", 
	"gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", 
	"prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	
genders.length.times {|i| santas << Santa.new(genders[i], ethnicities[i])}

p santas

santas.each do |santa|
	puts "-------"
	santa.speak
end 
=end


claus = Santa.new 
claus.celebrate_birthday(55)