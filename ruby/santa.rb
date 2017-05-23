class Santa

  def initialize(gender, ethinicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethinicity = ethinicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak()
   puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
   puts "That was a good #{cookie_type}!"
  end

end

# Driver Code
