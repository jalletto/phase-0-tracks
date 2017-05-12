puts "Enter number of employees."

employees = gets.chomp.to_i

until employees == 0 do
  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  birth_year = gets.chomp.to_i

  if birth_year + age == 2017 || birth_year + age == 2016
    age_varified = true
  else
    age_varified = false
  end

  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  likes_garlic = gets.chomp

  until likes_garlic == true || likes_garlic == false do
    if likes_garlic == "y" || likes_garlic == "yes" || likes_garlic == "sure"
      likes_garlic = true
    elsif likes_garlic == "n" || likes_garlic == "no" || likes_garlic == "nope  "
      likes_garlic = false
    else
      puts "Do you want garlic bread? yes or no?"
      likes_garlic = gets.chomp
    end
  end

  puts "Would you like to enroll in our health insurance?"
  insurance = gets.chomp

  until insurance == true || insurance == false do
    if insurance == "y" || insurance == "yes" || insurance == "sure"
      insurance = true
    elsif insurance == "n" || insurance == "no" || insurance == "nope"
      insurance = false
    else
      puts "Do you want insurance? yes or no?"
      insurance = gets.chomp
    end
  end

  puts "Please list any allergies you have one at a time. Type 'done' and press enter when completed."
  allergies = gets.chomp

  until allergies == "sunshine" || allergies == "done" do
    puts "Please list any allergies you have one at a time. Type 'done' and press enter when completed."
    allergies = gets.chomp
  end

  if age_varified == true && (likes_garlic == true || insurance == true) && allergies == "done"
    result = "Probably not a vampire."
  elsif age_varified == false && (likes_garlic == false && insurance == true) || age_varified == false && (likes_garlic == true && insurance == false)
    result = "Probably a vampire."
  elsif age_varified == false && likes_garlic == false && insurance == false
    result = "Almost certainly a vampire."
  else
    result = "Results inconclusive."
  end

  if allergies == "sunshine" && (result == "Probably not a vampire." || result == "Results inconclusive.")
    result = "Probably a vampire."
  end

  if name == "Drake Cula" || name == "Tu Fang"
    result = "Definitely a vampire."
  end

  puts "Name: #{name}\nAge: #{age}\nYOB: #{birth_year}\nLikes garlic: #{  likes_garlic}\nInsurance: #{insurance}\nAge Verified: #{age_varified}\nAllergies: #{allergies}\nVerdict: #{result}"

  employees = employees - 1
end

puts  "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

