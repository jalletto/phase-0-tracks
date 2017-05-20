# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk

zombie_apocalypse_supplies.each {|supply| print supply, "*"}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

def alphabetize(array)
  x = array.length
  loop do
    switch = false
    (x - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        switch = true
      end
    end
    break if switch == false
  end
  p array
end

alphabetize(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?

def search_list(array, search_item)

item_exists = false

array.each do |list_item|

   if search_item == list_item
      item_exists = true
      break
    else
      item_exists = false
    end
  end

  p item_exists

end

search_list(zombie_apocalypse_supplies,"CB radio")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
back_pack = []


zombie_apocalypse_supplies.each do |item|
 if back_pack.length <= 4
    back_pack << item

  end
end
p back_pack



# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

def combine_lists(list_one, list_two)

  new_list = list_one + list_two
  p new_list.uniq!

end

combine_lists(zombie_apocalypse_supplies, other_survivor_supplies)

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
extinct_animals.each {|animal, year| print "#{animal} - #{year} * "}

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.

recently_dead = {}

extinct_animals.each do |animal, year|
  if year < 2000
    recently_dead[animal] = year
  end
end
p recently_dead

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.

extinct_animals.each do |animal, year|
  extinct_animals[animal] = year - 3
 end


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

animals = ["Andean Cat", "Dodo", "Saiga Antelope"]

#for each item in the array, compare it to each key value in the hash.
#if you find a match print the array item and "extinct"
#if no match found, print the array item and "not extinct"

animals.each do |name|

  extinct_animals.each do |key, value|

    if key == name
      puts "#{key} is extinct."
    end
  end
end



# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
def search_for_key_return_as_array(search,hash)
  new_hash = {}
  x = 0
  until x == hash.length

    array = hash.shift

      if array[0] == search
        new_array = array
      else
        new_hash[array[0]] = array[1]
      end
    x = x + 1
    new_hash = hash

  end
  p hash
  p new_array
end

search_for_key_return_as_array("Passenger Pigeon", extinct_animals)
