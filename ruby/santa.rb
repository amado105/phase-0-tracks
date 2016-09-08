class Santa 

	attr_reader :ethnicity, :age
	attr_accessor :gender

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

	def celebrate_brithday 
		@age = @age + 1
	end 

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
	end 
end 


gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
santas = []

5.times do 
	claus = Santa.new(gender.sample, ethnicity.sample) 
	puts "#{claus.gender} and #{claus.ethnicity}"
	claus.age = rand(1...140)
	puts "They are #{claus.age} years old"
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

# gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# santas = []
# gender.length.times {|i| santas << Santa.new(gender[i], ethnicity[i])}
# p santas
# santas.each do |santa|
# 	puts "-------"
# 	santa.speak
# end 








