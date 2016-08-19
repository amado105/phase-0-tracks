# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#   	"Like Pharrell, I am happy #{words}!!!"
#   end
# end


# Shout.yell_angrily("Loud Noises")
# Shout.yelling_happily("I'm going to Disneyland")
# That's about all there is to it for writing a standalone module -- 
# a module declaration with some methods declared on the self keyword inside the declaration.


module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(words)
  	"Like Pharrell, I am happy #{words}!!!"
  end
    def yelling_confused(words)
  	words + "???"
  end
end

class LilJon
	include Shout
end

class MotherinLaw
	include Shout
end

jon = LilJon.new
p jon.yelling_confused("WHAT")
p jon.yelling_happily("OK")
p jon.yell_angrily("NO")

inlaw = MotherinLaw.new
p inlaw.yell_angrily("Why not")
p inlaw.yelling_confused("Why")
p inlaw.yelling_happily("we are visiting")


