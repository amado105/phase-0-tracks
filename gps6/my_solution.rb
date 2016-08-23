# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative tells the code to utilize the code in another file, 
# relative to the file. 
# require pulls files that someone else might have written 

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
 

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private # the methods that are private are only accessible inside the class

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      death_multiplier = 0.4
    elsif @population_density >= 150
      death_multiplier = 0.3
    elsif @population_density >= 100
      death_multiplier = 0.2
    elsif @population_density >= 50
      death_multiplier = 0.1
    else
      death_multiplier = 0.05
    end
      number_of_deaths = (@population * death_multiplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |name_state, data|
  state = VirusPredictor.new(name_state, data[:population_density], data[:population])
state.virus_effects
end 


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section