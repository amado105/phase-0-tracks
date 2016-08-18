# desigining House Amador as though it was a House from Game of Thrones 

# attributes: 
# 	house_words(can change), number of family_members (this changes as ppl can die), and house central castle (location can change)
# methods:
# 	speak; says the house words with 'are House Amador's words'
# 	vassals; makes a list of all the vassals 
# 	live_count; number of people with the Amador last name 

	
class Amador
	attr_reader :leader
	attr_accessor :vassal_family, :alive
	
	def initialize(leader, vassal_family)
		p "In the World of Ice and Fire..."
		@leader = leader
		@vassal_family = vassal_family
	end
	
	def speak
		p "#{@leader} is proud of the House words: You only live once. #YOLO"
	end
	
	def allegience(vassal_family)
		puts "House #{vassal_family} is loyal to House Amador."
		@vassal_family = vassal_family
	end
	
	def surviving_count(alive)
		@alive = alive - 1
		puts "We have lost an Amador, now we are #{@alive} :'("
	end 
		
end


array = []

puts "Create an instance: (type quit to exit)"
house = gets.chomp

# user can create as many instances as they like
until house == "quit"

	puts "Our House is currently subduing a vassal. Who is leading our forces?"
	leader = gets.chomp.to_str
	array << leader
	puts "Which House is being subdued?"
	vassal_family = gets.chomp.to_str
	array << vassal_family
	puts "We lost some family at the battle, how many did we have before?"
	alive = gets.chomp.to_i
	array << alive
	
	house = Amador.new(leader, vassal_family)
	house.speak
	puts "#{house.leader} is currently subduing House #{house.vassal_family}."
	house.surviving_count(alive)
	puts "But we #{house.alive} Amadors are enough to defeat our enemies."
	
	puts "Create an instance: (type quit to exit)"
	house = gets.chomp

end 

# loops through the array and prints out the attributes of each instance 
array.each { |data| puts "You entered: #{data}" }

	


