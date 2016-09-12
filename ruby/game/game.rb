class Game

 def initialize(game_word) 
 	@game_word = game_word
 	@guess_count = game_word.length
 	@guessed_letters_array = []
 	@game_array = []
 end 

 def word_array
 	@game_array = @game_word.chars
 	empty_array(@game_array)
 end 

 def empty_array(array)
 	@guessing_array = []
 	array.each do |letter|
 		letter = "_"
 		@guessing_array << letter
 	end
 	array_to_string(@guessing_array)
 end

 def array_to_string(array)
 	@feedback_string = array.join(' ')
 	p @feedback_string
 end 
 
 def guessed_letters(letter)
 	@guessed_letters_array = []
 	@guessed_letters_array << letter
 end 

 def letter_guess(letter)
 	if @guess_count > 0 && @guessed_letters_array.include?(letter)
 		puts "Already tried '#{letter}'! Enter a different letter."
 	elsif @guess_count > 0 && !@guessed_letters_array.include?(letter) && @game_array.include?(letter)
 		correct_letters(letter)
 	else
 		@guess_count -= 1 
 		puts "The word does not contain '#{letter}'!"
 	end 
 	@guessed_letters_array.push(letter)
 	puts "You have #{@guess_count} guesses left!"
 	
 	if @guess_count == 0 && @guessing_array != @game_array
 			puts  "No more guesses! You need more practice tsk tsk tsk..."
	elsif  @guessing_array == @game_array
		 	puts "Congrats! The word is #{@game_word}!"
	end

 end 

 def correct_letters(letter)
 	@guess_count -= 1
 	@game_array.each_index.select do |i|
 		if @game_array[i] == letter && 
 			@guessing_array[i] = letter
 		end 
 	end
 	array_to_string(@guessing_array)
 end 

end 

puts "Welcome to the Word Game! Guess the word! Choose a letter. "

new = Game.new("paella")
new.word_array
new.letter_guess("o")
new.letter_guess("e")
new.letter_guess("i")
new.letter_guess("o")
new.letter_guess("p")
new.letter_guess("a")
new.letter_guess("z")

# new = Game.new("unicornfairy")
# new.word_array
# new.letter_guess("o")
# new.letter_guess("e")
# new.letter_guess("i")
# new.letter_guess("u")
# new.letter_guess("y")
# new.letter_guess("a")
# new.letter_guess("i")
# new.letter_guess("f")
# new.letter_guess("n")
# new.letter_guess("r")
# new.letter_guess("c")