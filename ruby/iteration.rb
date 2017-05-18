
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
# some of these use hash user_data and some use letter_hash.

letter_hash = {
  a:"1000",
  b:"2000",
  c:"3000",
  d:"4000"
}

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
letters = ["a", "b", "c", "d", "e"]

# release 2.1

p numbers.delete_if { |x| x < 5 }

p letter_hash.delete_if { |key, value| key >=:b}

#release 2.2

p numbers.keep_if { |x| x > 5 }

  #returns key only if value contains an "o"
p user_data.keep_if {|data_type, data_value| data_value.include?("o")}

#release 2.3

p letters.include?("a")

p letter_hash.has_value?("3000")

#release 2.4
p letters.drop_while {|x| x < "d"}

  #loops through hash until data_type equals eye_color
p user_data.drop_while {|data_type, data_value| data_type != :eye_color}









