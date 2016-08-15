def stark_words
	phrase1 = "Winter is Coming"
	phrase2 = "The North Remembers"
	puts "If you are a true Northerner then you know the words of the north."
	yield(phrase1, phrase2)
	puts "The King in the North! The White Wolf!"
end

stark_words { |phrase1, phrase2| puts "I am a true Northerner and loyal to the Starks because #{phrase2}, 
	and we must always be ready because #{phrase1}." }