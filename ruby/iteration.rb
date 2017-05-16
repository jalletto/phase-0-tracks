
# Release 0: Write Your Own Method that Takes a Block

def say_goodbye
  puts "Goodbye for now."
  yield("josh", "sarah")
end

say_goodbye { |name1, name2| puts "Come back soon #{name1} and #{name2}!"}

#Release 1: Use .each , .map and .map!

#Release 1.1
colors = ["green", "blue", "yellow", "red"]

user_data = {
  name: "josh",
  age: "32",
  eye_color:"red",
  home_town:"Chicago"
}

# Release 1.2
colors.each do |color|
  puts "The color is #{color}"
end

colors.map! do |color|
  color.upcase
end

p colors

user_data.each do |key, value|
  puts "#{value}"
end

# Release 2: Use the Documentation

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
letters = ["a", "b", "c", "d", "e"]

# release 2.1

p numbers.delete_if { |x| x < 5 }


#release 2.2

p numbers.keep_if { |x| x > 5 }

#release 2.3

p letters.include?("a")

#release 2.4
p letters.drop_while {|x| x < "d"}






