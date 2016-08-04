puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "What year were you born?"
year_born = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
order_garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp

age_verification = 2016 - age

if (year_born == age_verification) && (order_garlic_bread == "yes" || health_insurance == "yes")
	puts "Probably not a vampire."
elsif (year_born != age_verification) && (order_garlic_bread == "no" || health_insurance == "no")
	puts "Probably a vampire."
elsif (year_born != age_verification) && (order_garlic_bread == "no") && (health_insurance == "no")
	puts "Almost certainly a vampire."
elsif name == "Drake Cula" || name == "Tu Fang" 
	puts "Definitely a vampire." 
else 
	puts "Results inconclusive."
end
	
	
