def stark_words
	phrase1 = "Winter is Coming"
	phrase2 = "The North Remembers"
	puts "If you are a true Northerner then you know the words of the north."
	yield(phrase1, phrase2)
	puts "The King in the North! The White Wolf!"
end

stark_words { |phrase1, phrase2| puts "I am a true Northerner and loyal to the Starks because #{phrase2}, 
	and we must always be ready because #{phrase1}." }


seven_kingdoms = ["the North", "the Vale", "Dorne", "the Stormlands", "the Reach", "the Westerlands", "the Riverlands"]

houses_words = { Martell: "Unbowed, Unbent, Unbroken", Stark: "Winter is Coming", Arryn: "As High as Honor", Lannister: "Hear me roar"}



seven_kingdoms.each do |phrase|
	puts "#{phrase} Remembers..."
end 

seven_kingdoms.map! do |location|
	puts "#{location} is in Westeros" 
end


houses_words.each do |team, mottos|
	puts "For the #{team} family, to enter their secret clubhouse you need to know the secret phrase: #{mottos}."
end 



 years = [1915, 1930, 1955, 1970, 1995, 2010]

# years.delete_if { |decade| decade < 1960 }

# years.keep_if { |number| number == 1955 }

# years.select { |num| num.even? }

# years.take_while { |i| i < 1957 }

ages = { JimmyJohns: 21, Tommy: 12, Papa: 54, JohnnyBoy: 24}

# ages.delete_if { |key, value| value < 23 }

# ages.keep_if { |key, value| key.length > 5 }

# ages.select { |key, value| value >= 21 } 




