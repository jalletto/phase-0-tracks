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

fido = Puppy.new
fido.fetch("ball")
fido.speak(5)
fido.roll_over
if fido.age_in_dog_years(15) == 105
 p true
end
fido.wag_tail()

class Kittens

  def initialize()
  end

  def meow(i)
    p "meow " * i
  end

  def create_kitten(name)
    p name = Kittens.new
  end

end



don = Kittens.new

don.meow(5)

# while Kitten instances is less than 50 create a new instance of Kitten starting with Kitten1 and going up.



kittens_created = 0
instances_of_kittens = []

while kittens_created < 10
  kitten1 = Kittens.new
  instances_of_kittens << kitten1
  kittens_created += 1
end

p instances_of_kittens

instances_of_kittens.each do |instance|
  p instance.meow(3)
end

