
# iterate through arr, moving every item into a new array. 
# Break if the last item of an array 
# is == to the integer searching for. 
# if the last item of the new array is == integer, 
# then take the length of the new array and subtract by 1, 
# making this a new variable called index and print 
# else p nil 

arr = [42, 89, 23, 1, 234, 3, 12345]

def search_array(array, integer)
	new_array = []
	array.each do |number|
		new_array << number 
		break if new_array.last == integer 
	end 
	if new_array.last == integer 
		index = new_array.length - 1 
		index 
	else 
		nil 
	end 
end 
	

p search_array(arr, 1)
# => 5
p search_array(arr, 24)
# => nil


# Needs to add the last term and the penultimate term together and add that new number 
# to the fib terms 
# So start with the first two fib terms in an array. The inputted number should indicate
# how many times to loop to continue adding to the array.  
# deal with edge cases with if and elsif 

