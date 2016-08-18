class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age
	def initialize(santa_gender, santa_ethnicity) 
		p "Initializing Santa instance ..."
		@gender = santa_gender
		@ethnicity = santa_ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
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
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
	end
end 

# DRIVER CODE 

# This makes an array with the genders and ethnicities, then takes the
# genders and runs the speak method with the genders. 
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

#checks that the getter and setter methods work
claus = Santa.new("male", "Latino") 
claus.celebrate_birthday(55)
claus.get_mad_at("Vixen")
puts "This Santa is #{claus.age} years old and #{claus.ethnicity}."


# Build Many, Many Santas with genders and ethnicities and changes Santa's age
5.times do 
	claus = Santa.new(genders.sample, ethnicities.sample) 
	puts "#{claus.gender} and #{claus.ethnicity}"
	claus.age = rand(1...140)
	puts "They are #{claus.age} years old"
end

