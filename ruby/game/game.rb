class Game

 def initialize(game_word) 
 	@game_word = game_word
 	@guess_count = game_word.length
 	@letters_guessed = []
 	@is_over = false  
 end 

 def word_array
 	@game_array = [] 
 	@game_array = @game_word.chars
 	p @game_array
 end 

 def empty_array
 	@blank_array = []
 	@game_array.each do |letter|
 		letter = "_"
 		@blank_array << letter
 	end
 	p @blank_array
 end

 def array_to_string
 	@blank_array.join(' ')
 	p @blank_array
 end 

 def guessed_letters(letter)
 	@guessed_letters_array = []
 	@guessed_letters_array << letter
 	p @guessed_letters 
 end 


end 