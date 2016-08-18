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


















