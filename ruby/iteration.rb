def say_goodbye
  puts "Goodbye for now."
  yield("josh", "sarah")
end

say_goodbye { |name1, name2| puts "Come back soon #{name1} and #{name2}!"}