
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
# how many times to loop to continue adding to the array (need to subtract 2 because I am 
# already starting with two terms in the array).  
# deal with edge cases with if and elsif 

def fib(number)
	fib_terms = [0, 1]
if number == 0
	nil
elsif number == 1 
	p [0]
else 
	terms = number - 2 
		terms.times do 
			add_number = fib_terms[-1] + fib_terms[-2]
			fib_terms << add_number
		end
	p fib_terms
end 
end


# if fib(100).last == 218922995834555169026
# 	puts "It works!"
# else 
# 	puts "Failure"
# end


# create a loop and have swapped equal to false. and inside create an iteration that goes through the array 
# one less times as the length of the array. the parameter will check if index of
# the first term is > the index of the following term. if so, it will swap the two 
# terms. and then swapped equal to true. lastly, it will break if it has not been 
# swapped and then print the array. 

def bubble_sort(array)
	n = array.length 

	loop do 

		swapped = false 

		(n - 1).times do |i|
			if array[i] > array[i + 1]
				array[i], array[i + 1] = array[i + 1], array[i]
				swapped = true
			end 
		end 

		break if not swapped 
	end 

	array 
end


a = [1, 9, 2, 8, 3, 7, 4, 6, 5, 19, 10, 11]

bubble_sort(a)









