
# Take the string, convert it into and array, with first and last name as different items
# reverse the array 
# split the array to individual letters

# create a new_letter string = "aeiobcdfghjklmnpqrstvwxyAEIOBCDFGHJKLMNPQRSTVWXY"
# iterate through each each letter and replace it with the next one in the new_letter string 
# if letter includes z, make it a b
# if letter includes Z make it a B
# if letter includes U make it a A
# if letter includes u make it a a


# This method takes the name and changes the letters
def encrypt(str)
	letters = "aeioubcdfghjklmnpqrstvwxyzAEIOBCDFGHJKLMNPQRSTVWXYZ"
	new_name = ""
	str.length.times do |index|
		if str[index] == "u"
			new_name << "a"
		elsif str[index] == "U"
			new_name << "A"
		elsif str[index] == "z"
			new_name << "b"
		elsif str[index] == "Z"
			new_name << "B"
		elsif str[index] == " "
			new_name << " "
		else
			next_letter = letters[letters.index(str[index]) + 1]
			new_name << next_letter
		end
	end 
    p new_name
end