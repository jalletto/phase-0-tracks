# create an empty hash. Ask user for name, age, number of children, decor theme, do you entertain?, what is your favorite type of light bulb.
# create a symbol for each value and assign it to the hash.
#print hash
# ask the user to enter any fields they would like to update.
# ask the user which field and what to update it to.
# convert string entered by user to a key
#ask for updated info and add it to key


client_info = {}

puts "Enter name."
client_info[:name] = gets.chomp
puts "How old are you?"
client_info[:age] = gets.chomp.to_i
puts "How many children do you have?"
client_info[:number_children] = gets.chomp.to_i
puts "Do you like to party?"
  party = gets.chomp
if party == "yes"
  client_info[:party] = true
else
  client_info[:party] = false
end
puts "What is your favorite type of light bulb?"
client_info[:fav_light_bulb] = gets.chomp

p client_info

puts "If you would like to make changes, enter the name of the field you would like to update. If not, type 'done'. "
  field_update = gets.chomp

  if client_info.key?(field_update.to_sym)
    puts "Enter new value."
    client_info[field_update.to_sym] = gets.chomp
    p client_info
  else
    puts "Thank you. Have a great day."
  end
