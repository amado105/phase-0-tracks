class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender
	def initialize(santa_gender, santa_ethnicity) 
		p "Initializing Santa instance ..."
		gender = santa_gender
		@ethnicity = santa_ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0 
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


claus = Santa.new("male", "Latino") 
claus.celebrate_birthday(55)
claus.get_mad_at("Vixen")
puts "This Santa is #{claus.age} years old and #{claus.ethnicity}."









