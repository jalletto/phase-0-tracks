# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(number)
#     number.times do
#      p "woof"
#     end
#   end

#   def roll_over()
#     p "*Rolls Over*"
#   end

#   def age_in_dog_years(human_years)
#    p human_years * 7
#   end

#   def wag_tail()
#     p "*Wags Tail*"
#   end

#   def initialize()
#     p "Initializing new puppy instance."
#   end

# end

# fido = Puppy.new
# fido.fetch("ball")
# fido.speak(5)
# fido.roll_over
# if fido.age_in_dog_years(15) == 105
#  p true
# end
# fido.wag_tail()

class Kittens

  def meow(i)
   p "meow " * i
  end

end

def create_kitten(name)
  p name = Kittens.new
end




don = Kittens.new

don.meow(5)

# while Kitten instances is less than 50 create a new instance of Kitten starting with Kitten1 and going up.



kittens_created = 0

while kittens_created < 50
  p kitten1 = Kittens.new
  kittens_created += 1
end



