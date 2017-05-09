puts "Please input your hamster's name."
name = gets.chomp
puts "Enter 1 - 10 for volume level."
volume = gets.chomp.to_i
puts "Enter fur color."
color = gets.chomp
puts "Good for adoption (y or n)?"
adoption = gets.chomp

valid_imput = false
loop do
  if adoption == "y" || adoption == "yes"
    adoption = true
    valid_imput = true
    break
  elsif adoption == "n" || adoption == "no"
    adoption = false
    valid_imput = true
    break
  else
    puts "Please try again."
    adoption = gets.chomp
  end
end


puts "Enter age of hamster."
age = nil
age = gets.chomp


