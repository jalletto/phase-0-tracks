# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative: Allows access to code in a file that is in the same directory.
#
#
require_relative 'state_data'

class VirusPredictor

#initialize instance variables for class.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#calls predicted_deaths and speed_of_spread.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private


  #checking population density and then using population to calculate the number of deaths.
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = case @population_density
      when 200..Float::INFINITY then (@population * 0.4).floor
      when 150...200 then (@population * 0.3).floor
      when 100...150 then (@population * 0.2).floor
      when 50...100 then (@population * 0.1).floor
      else (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #checking pop density and using it to calculate spread.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = case @population_density

      when 200..Float::INFINITY then 0.5
      when 150...200 then 1
      when 100...150 then 1.5
      when 50...100 then 2
      else 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state



STATE_DATA.each do |state, population_info|

  state_name = VirusPredictor.new(state, population_info[:population_density], population_info[:population])
    state_name.virus_effects
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
# What are the differences between the two different hash syntaxes shown in the state_data file?
# - The main hash uses strings for the state name keys. The hashes that make up the state values use symbols for their keys.

# What does require_relative do? How is it different from require?
  # - require_relative retrieves code from a file with a given path relative to the current directory. require does the same thing but locates the file relative to the home directory.

# What are some ways to iterate through a hash?
  # .each,  .map

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# What concept did you most solidify in this challenge?
# I think I became much more aware of how to use implicate return to my advantage.