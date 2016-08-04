puts "How many employees will be processed?"
employees_processed = gets.to_i

until employees_processed == 0 

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "What year were you born?"
year_born = gets.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
order_garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp

puts "Do you have any allergies?"
allergies = gets.chomp

while allergies != "done"
	if allergies == "sunshine"
		puts "Probably a vampire."
	else 
		puts "Do you have any allergies?"
	end
	allergies = gets.chomp
end

age_verification = 2016 - age

if name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire." 
else 
	if year_born == age_verification
		if order_garlic_bread == "yes" || health_insurance == "yes"
			puts "Probably not a vampire."
		else
			puts "Probably a vampire."
		end
	elsif year_born != age_verification
		if order_garlic_bread == "no" && health_insurance == "no"
			puts "Almost certainly a vampire."
		elsif order_garlic_bread == "no" || health_insurance == "no"
			puts "Probably a vampire."
		else 
			puts "Probably not a vampire."
		end
	else 
		puts "Results inconclusive."
	end
end

employees_processed = employees_processed - 1

end
	
