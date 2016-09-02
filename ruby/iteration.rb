def house_words  
	words1 = "Winter is Coming"
	words2 = "Fire and Blood"
	puts "If Jon Snow and Daenerys Targaryen get married, what will their House words be?"
	yield(words1, words2)
	puts "Let's hope they join because the Others come with winter."
end 

house_words { |words1, words2| puts "#{words1} with #{words2}!"}



# use of .each and .map!

house_sigil = {
	stark: "wolf", 
	arryn: "falcon",
	lannister: "lion",
	tully: "fish"
}

westerosi_cities = [
	"Winterfell remains", 
	"Riverrun has fallen", 
	"Castle Black remains", 
	"King's Landing has fallen"
]

house_sigil.each do |house, sigil|
	puts "House #{house.capitalize} waves its flags bearing a virtuous #{sigil}!"
end 

westerosi_cities.each do |location|
	if location.include?("remains")
		puts "#{location} and still stands with us!"
	else 
		puts "#{location} and belongs to the enemy."
	end 
end 

westerosi_cities.map! do |location|
	location + "!"
end 


years = [1915, 1930, 1955, 1970, 1995, 2010]

# years.delete_if { |decade| decade < 1950 }

# years.keep_if { |number| number == 1970 }

# years.select { |num| num.even? }

# years.take_while { |i| i < 1957 }

ages = { jimmyjohns: 21, johnnyrockets: 12, papajohn: 54, carlsjr: 24} 

# ages.delete_if { |key, value| value < 23 }

# ages.keep_if { |key, value| key.length > 5 }

# ages.select { |key, value| value >= 21 } 





















