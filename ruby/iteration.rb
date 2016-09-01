def house_words  
	words1 = "Winter is Coming"
	words2 = "Fire and Blood"
	puts "If Jon Snow and Daenerys Targaryen get married, what will their House words be?"
	yield(words1, words2)
	puts "Let's hope they join because the Others come with winter."
end 

house_words { |words1, words2| puts "#{words1} with #{words2}!"}


