def say_goodbye
  puts "Goodbye for now."
  yield("josh", "sarah")
end

say_goodbye { |name1, name2| puts "Come back soon #{name1} and #{name2}!"}

colors = ["green", "blue", "yellow", "red"]

user_data = {
  name: "josh",
  age: "32",
  eye_color:"red",
  home_town:"Chicago"
}

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

