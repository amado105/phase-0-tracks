
# type of puppie
# color of fur
# behavior
# friendly


# To declare your puppy class:

class Puppy
end

# Ask your class what methods are available:

Puppy.methods

# Did you know that you can call .methods on objects in Ruby to find out what built-in methods are available?

#  For now, only one method here matters: new. This means that we can call Puppy.new, which will create a new instance of the Puppy class. (Remember, instances are to classes as members are to species: the class is just a blueprint for what an instance might look like and how it might behave.)

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new


# Run each line separately, making guesses as to what the response will look like

spot.class
# => Puppy

duchess == fido
# => false

fido.instance_of?(Array)
# => false

fido.instance_of?(Puppy)
# => true

spot.play_dead
# => undefined