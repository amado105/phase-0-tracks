
# type of puppie
# color of fur
# behavior
# friendly


# To declare your puppy class:

class Puppy
end

# Ask your class what methods are available:

Puppy.methods

# Did you know that you can call .methods on objects in Ruby to find out what 
#built-in methods are available?

#  For now, only one method here matters: new. 
#T his means that we can call Puppy.new, which will create a new instance of 
# the Puppy class. (Remember, instances are to classes as members are to species: 
# the class is just a blueprint for what an instance might look like and how it might behave.)

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new


# Run each line separately, making guesses as to what the response will 
# look like

spot.class
# => Puppy

duchess == fido
# => false

fido.instance_of?(Array)
# => false

fido.instance_of?(Puppy)
# => true

# spot.play_dead
# => undefined

# you can call methods on the class itself (Puppy.new, for example), 
# or on an instance of a class (some_puppy_instance.bark). 
# Methods you call on a class are called class methods. 
# Methods you call on an instance are called instance methods.

# You've been using instance methods quite often already -- 
# anytime you call a method on a particular string, or array, 
# or integer, you are calling an instance method. 
# You haven't called many class methods, but you certainly could

str = String.new

str.length
# => 0

str.empty?
# => true

str += "huh."
# => "huh."

# In the past, we have often made new instances of the String class by 
# declaring them literally:

str = "some string"

# ... but String.new will work too, and 
# even takes an argument for what characters you would like to put 
# in the string. Try it:

greeting = String.new("hello")

greeting.length

greeting.upcase

# It's important to understand the difference between class methods and 
# instance methods. A class and an instance of a class are 
# two completely separate objects. 
# You wouldn't call .new on an instance of a string, and 
# you wouldn't call .length on the String class itself.

