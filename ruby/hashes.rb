
# Create all the questions and then take the responses and convert them to the approptirate data 

puts "What is your name?"
client_name = gets.chomp 

puts "How old are you?"
client_age = gets.chomp.to_i 

puts "How many children do you have?"
number_children = gets.chomp.to_i 

puts "Do you have a decor theme? (yes/no)"
have_decor = gets.chomp 

if have_decor == "yes"
	puts "What is your decor theme?"
	decor_theme = gets.chomp
else 
	puts "Okay, next question."
	decor_theme = "none"
end 

puts "Do you have an apartment or house?"
aparment_house = gets.chomp

puts "How many rooms in your residence?"
number_of_rooms = gets.chomp.to_i

# create the hash and create the symbols as keys, and put the variables containing responses as the value 

client_info = {
	name: client_name,
	age: client_age,
	children: number_children,
	decor: decor_theme, 
	residence: aparment_house,
	rooms: number_of_rooms
}

client_info.each do |value, key|
	p "#{value}: #{key}"
end 

# create the hash and create the symbols as keys, and put the variables 
# containing responses as the value 

# Ask if they want to update any information once, if yes then continue on to 
# ask which key they would like to updated, and then ask what they would like to 
#  change it to. if the key-value pair takes an integer as a value, 
# convert the user input into an integer then update the key-value pair. 






