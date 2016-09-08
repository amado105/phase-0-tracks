class Santa 

	def initialize(gender, ethnicity)
		p "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end  

	def speak 
		p "Ho, ho, ho! Haaaappy holidays!"
	end 

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}"
	end 

end 



# Release 0 driver code
# santa = Santa.new 
# santa.speak
# santa.eat_milk_and_cookies("chocolate-chip")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# The code above is the same as the code below

# santas = []
# gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# gender.length.times do |i|
#   santas << Santa.new(gender[i], ethnicity[i])
# end

# The code above is the same as the code below

gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
santas = []
gender.length.times {|i| santas << Santa.new(gender[i], ethnicity[i])}
p santas
santas.each do |santa|
	puts "-------"
	santa.speak
end 








