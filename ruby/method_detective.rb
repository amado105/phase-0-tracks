# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
=> "InVeStIgAtIoN"
# Switches lower case to uppercase and vice versa

p "zom".insert(-2, "o")
=>  "zoom"
# inserts a string into a designated position 

p "enhance".center(16) 
=>  "    enhance    "
# creates white-space padding 

p "Stop! You’re under arrest!".upcase
=>  "STOP! YOU’RE UNDER ARREST!"
# makes all uppercase

p "the usual".insert(-1, " suspects")
p "the usual".insert(9, "suspects")
p "the usual".concat(" suspects")
=>  "the usual suspects"
# the first two insert a string into a designated position 
# the last one adds/concatenates the object to the string 

p " suspects".prepend("the usual")
=>  "the usual suspects"
# prepends(adds to the beginning) the object to the given string 

p "The case of the disappearing last letter".chop
=> "The case of the disappearing last lette"
# chops the last letter

p "The mystery of the missing first letter".slice! (1..38)
=> "he mystery of the missing first letter"
# Deletes the specified portion from str, and returns the portion deleted.

p "Elementary,    my   dear        Watson!".squeeze
=> "Elementary, my dear Watson!"
# Returns a new string where runs of the same character that occur in this set are 
# replaced by a single character. In this case the " " empty characters are replaced
# by a single one. 

p "z".ord
=> 122 
# (What is the significance of the number 122 in relation to the character z?)
# Returns the Integer ordinal of a one-character string

p "How many times does the letter 'a' appear in this string?".count('a')
=> 4
# returns an integer of the amount of times the parameter object is in the string