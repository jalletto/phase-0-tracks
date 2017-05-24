class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(number)
    number.times do
     p "woof"
    end
  end
  def roll_over()
    p "*Rolls Over*"
  end
  def age_in_dog_years(human_years)
   p human_years * 7
  end
  def wag_tail()
    p "*Wags Tail*"
  end
  def initialize()
    p "Initializing new puppy instance."
  end
end

# PUPPY DRIVER CODE

fido = Puppy.new
fido.fetch("ball")
fido.speak(5)
fido.roll_over
if fido.age_in_dog_years(15) == 105
 p true
end
fido.wag_tail()

puts "---------------"
# RELEASE 2

class Kittens
  def initialize(name)
    @name = name
    p "Initializing new kitten instance"
  end
  def meow(num)
    num.times do
      puts "Meow!"
    end
  end
  def jump
    puts "#{@name} is jumping all over the place!"
  end
  def climb
    puts "#{@name} just climbed a tree. Oh no!"
  end
  def best_ever
    puts "#{@name} is super awesome."
  end
end

# Create a method that generates a number of names for our kittens, from a common base name (e.g Kitten_1, Kitten_2, Kitten_3, etc.) and stores the names in an array.
# Name generator by Gwynne Noth. Thanks dude!
def name_generator(base_name, num_of_names_to_generate)
  names_created = 0
  name_array = []
  while names_created < num_of_names_to_generate
    # I used names_created + 1 to avoid having a Kitten_0
    kitten_name = base_name + (names_created + 1).to_s
    names_created = names_created + 1
    name_array << kitten_name
  end
  return name_array
end

# Run the name generator to create an array of 50 names
kitten_names = name_generator("Kitten_", 50)

# Iterate over the name array to create 50 new kitties
kitten_collection = []
puts "Iterating through names list to create kittens"
kitten_names.each do |name|
  puts "Creating a kitten named #{name} ..."
  kitten_collection << Kittens.new(name)
  puts "There are now #{kitten_collection.length} kitten instances in the array"
  puts "----"
end

# DRIVER CODE

Don = Kittens.new("Don")
Don.meow(3)
Don.jump


kitten_collection.each do |kitten|
  kitten.best_ever
end