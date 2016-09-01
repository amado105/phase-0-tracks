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


