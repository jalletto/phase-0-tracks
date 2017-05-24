# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!" + " :))))"
#   end

# end

# p Shout.yell_angrily("What does all this mean?")

# p Shout.yelling_happily("Hurray! I barely understand this.")

module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!" + " :))))"
  end

end

class Angry_Mob
  include Shout
end

class Friendly_Mob
  include Shout
end

angry_mob = Angry_Mob.new
p angry_mob.yell_angrily("Pie sucks")

friendly_mob = Friendly_Mob.new
p friendly_mob.yelling_happily("We love Pie")




