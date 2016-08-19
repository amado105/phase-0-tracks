module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
  	"Like Pharrell, I am happy #{words}!!!"
  end
end


Shout.yell_angrily("Loud Noises")
Shout.yelling_happily("I'm going to Disneyland")
# That's about all there is to it for writing a standalone module -- 
# a module declaration with some methods declared on the self keyword inside the declaration.