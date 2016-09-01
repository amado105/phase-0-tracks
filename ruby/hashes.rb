# Can you use a variable to access an array?

suitcase_items = []

suitcase_items << "thing" 
suitcase_items << "stuff"
suitcase_items << "item"
suitcase_items << "object"

variable = suitcase_items

p variable
=> ["thing", "stuff", "item", "object"]

p variable[0] 
 => "thing"

p variable.last 
=> "object"

# What happens if you try to access an index that doesn't exist 
# because the array is smaller than the index you provided?

suitcase_items = []

suitcase_items << "thing" 
suitcase_items << "stuff"
suitcase_items << "item"
suitcase_items << "object"

p suitcase_items[5]
=> nil


# Create a new Ruby file (call it what you like, you won't turn it in) 
# and declare a hash that represents one person's application data.

job_application = {
	name: "Jenny Jenis",
	address: "1234 One Street",
	email: "jjen@gmail.com",
	phone: "555-5555",
	fave_blue: "turquois",
	wallpaper: "chevrons",
	ombre: "so last season"
}

# Add driver code at the bottom of your file to update some values and 
# maybe add in a new value for whether the person was hired.

job_application[:name] = "Jennifer Jenis"
job_application[:fave_blue] = "royal blue"
job_application[:status] = "hired"

# What happens if store a key in a variable, 
# then access the hash using the variable? Does it work?

variable = job_application[:status]  
p variable => "hired"


# What happens when try an expression like your_hash[:name] + your_hash[:address] 
# (or whatever keys you used)? Does it affect the original hash?

p job_application[:name] + job_application[:address] 
=> "Jennifer Jenis1234 One Street"
# And it does not affect the original hash


# ---------------------------------------------------------------------------------------------------

## RELEASE 3

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

puts "Do you want to update any information? (type 'yes' to update or 'none' to skip)"
update_info = gets.chomp

if update_info == "yes"
		puts "Which key would you like to update? (e.g. age, children, decor, residence, rooms) "
		update_key = gets.chomp.to_sym
		puts "What would you like to change it to?"
		update_value = gets.chomp
			if update_key == :age 
				integer = update_value.to_i
				client_info[update_key] = integer
			elsif update_key == :children
				integer = update_value.to_i
				client_info[update_key] = integer
			elsif update_key == :rooms 
				integer = update_value.to_i
				client_info[update_key] = integer 
			else
				client_info[update_key] = update_value
			end 
else 
end 

client_info.each do |value, key|
	p "#{value}: #{key}"
end 




