# Swapping the first and last name.
# turn the names into an array and then reverse it.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
# JUST FOR ME: for each letter in word (cat) take "c" compare it to the array of vowels. If there is a match (such as "a") find the vowel's index (in this case "a" is zero) and add one to it. Then set the letter to equal that value in the index.

# "Felicia Torres" will become "Vussit Gimodoe",

def code_name_namer(word)
  vowels = %w(a e i o u)

  consonants = %w(b c d f g h j k l m n p q r s t v w x y z)

  wordarray = word.split("")

  wordarray.map! do |letter|
    if vowels.include? letter
      vowel_index = vowels.index(letter) + 1
      if vowel_index == vowels.length
        vowel_index = 0
      end
      letter = vowels[vowel_index]
    elsif consonants.include? letter
      consonant_index = consonants.index(letter) + 1
      if consonant_index == consonants.length
        consonant_index = 0
      end
      letter = consonants[consonant_index]
    end
    letter
  end
  new_name = wordarray.join
  capitalize_array = new_name.split(" ")
  capitalize_array.map! {|word| word.capitalize}.join(" ")
end


# hash for old and new names
agent_names = {}


loop do
  puts "Enter a name or type 'quit' to exit."
  input = gets.chomp
  if input == "quit"
    break
  end
  reverse_name = input.downcase.split(' ').reverse

  new_name = reverse_name.join(' ')

  code_name = code_name_namer(new_name)

  agent_names[input] = code_name

  p code_name
end

agent_names.each {|original_name, code_name| puts "#{original_name} is also know as #{code_name}"}

