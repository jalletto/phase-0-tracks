class Santa
attr_reader :age, :ethinicity
attr_accessor :gender

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

  # Setter Methods for attributes
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end







end

# Driver Code
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas[0]
p santas[0].get_mad_at("Dasher")
p santas[0].age
p santas[0].ethinicity
p santas[0].celebrate_birthday
p santas[0].gender = "female"
p santas[0]

