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
 	@game_array.each do |letter|
 		letter = "_"
 		@guessing_array << letter
 	end
 	array_to_string(@guessing_array)
 end

 def array_to_string(array)
 	@feedback_string = array.join(' ')
 	p @feedback_string
 end


end 