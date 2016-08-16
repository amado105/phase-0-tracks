# This method takes the name and changes the letters
def encrypt(str)
	letters = "aeioubcdfghjklmnpqrstvwxyzaAEIOUBCDFGHJKLMNPQRSTVWXYZ"
	new_name = ""
	str.length.times do |index|
		if str[index] == "u"
			new_name << "a"
		elsif str[index] == " "
			new_name << " "
		else
			next_letter = letters[letters.index(str[index]) + 1]
			new_name << next_letter
		end
	end 
    p new_name
end

# Creates the empty hash
hash = {}

# User interface
puts "What is your name?"
name = gets.chomp

# This will run as long as the user types in anything but quit
until name == "quit"
	name2 = name.split(" ").reverse!
	name3 = name2.join(" ")
	name4 = name3.split("")
	new_name = encrypt(name4)
	hash[name] = new_name
	puts "What is your name?"
	name = gets.chomp
end

# presents the data structure of all the names
hash.each {|real_name, fake_name| puts "#{real_name} is now named #{fake_name}."}