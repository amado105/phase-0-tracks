
# This is not a standalone module, this is a mixin module meaning for other classes to use
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end
# But wait. Where's that self keyword we just learned about? 
# When we're writing a module as a mixin designed to add instance methods to a class, 
# we don't use the self keyword. We can define our module methods the same way 
# we would write instance methods inside of a class.

# We can use a module to add the same behavior to both classes. 
# For instance, birds and airplanes can both fly.
class Bird
end

class Plane
end
# Now, let's write a Flight module. We'll need to do that above our class declarations, 
# at the top of the file.


#Add your module to your Bird and Plane classes:

class Bird
	include Flight
end

class Plane
	include Flightfli
end

# Driver
bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)
