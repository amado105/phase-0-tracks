
# type of puppie
# color of fur
# behavior
# friendly


class Puppy
end 

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new


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

str = String.new

str.length
# => 0

str.empty?
# => true

str += "huh."
# => "huh."


str = "some string"

greeting = String.new("hello")

greeting.length

greeting.upcase