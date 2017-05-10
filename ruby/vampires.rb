puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birth_year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
likes_garlic = gets.chomp

until likes_garlic == true || likes_garlic == false do
  if likes_garlic == "y" || likes_garlic == "yes" || likes_garlic == "sure"
    likes_garlic = true
  elsif likes_garlic == "n" || likes_garlic == "no" || likes_garlic == "nope"
    likes_garlic = false
  else
    puts "Do want garlic bread? yes or no?"
    likes_garlic = gets.chomp
  end
end

puts "Would you like to enroll in our health insurance"
insurance = gets.chomp

until insurance == true || insurance == false do
  if insurance == "y" || insurance == "yes" || insurance == "sure"
    insurance = true
  elsif insurance == "n" || insurance == "no" || insurance == "nope"
    insurance = false
  else
    puts "Do want insurance? yes or no?"
    insurance = gets.chomp
  end
end




puts "Name:#{name}\nAge:#{age}\nYOB:#{birth_year}\nLikes garlic:#{likes_garlic}\nInsurance:#{insurance}\n"