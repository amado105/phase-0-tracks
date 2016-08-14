
#
# Ask the user for all this information: 
# clients name
# client's age
# number of children
# decor theme
# number of rooms
# apartment or house
#
# then convert it to the appropriate data type

# Print the hash to the screen when the designer has answered all of the questions.

# Give the user the opportunity to update a key (no need to loop, once is fine). 
# After all, sometimes users make mistakes! If the designer says "none", skip it. 
# But if the designer enters "decor_theme" (for example), 
# your program should ask for a new value and update the :decor_theme key. 
# (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) 
# You can assume the user will correctly input a key that exists in your hash -- 
# no need to handle user errors.

# Print the latest version of the hash, and exit the program.
#



	puts "What is your name?"
	client_name = gets.chomp 

	puts "How old are you? This is for statistical data."
	client_age = gets.chomp.to_i


	puts "How many children do you have?"
	client_children = gets.chomp.to_i

	puts "Do you have a decor theme? (yes/no)"
	client_decor_theme = gets.chomp

	if client_decor_theme == "yes"
		puts "If you have a decor theme, what is it?"
		decor_theme = gets.chomp
	else
		puts "Okay next question"
	end 

	puts "Do you have an apartment or house?"
	aparment_house = gets.chomp

	puts "How many rooms in your residence?"
	number_of_rooms = gets.chomp.to_i

	interior_designer_job = {}

	interior_designer_job = { 
		client_name: client_name,
		client_age: client_age,
		client_children: client_children,
		decor_theme: decor_theme, 
		aparment_house: aparment_house,
		number_of_rooms: number_of_rooms
	}


puts "Would you like to update any of your answers? (yes/no)"
update_answers = gets.chomp

if update_answers == "yes"
	puts "Which of the keys would you like to change?"
	key_change = gets.chomp.to_sym

	puts "Enter the new information."
	new_information = gets.chomp

	interior_designer_job[key_change] = new_information
else 
	p interior_designer_job
end

p interior_designer_job





# Give the user the opportunity to update a key (no need to loop, once is fine). 
# After all, sometimes users make mistakes! If the designer says "none", skip it. 
# But if the designer enters "decor_theme" (for example), 
# your program should ask for a new value and update the :decor_theme key. 
# (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) 
# You can assume the user will correctly input a key that exists in your hash -- 
# no need to handle user errors.



