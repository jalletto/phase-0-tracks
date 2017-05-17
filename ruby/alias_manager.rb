# Swapping the first and last name.
# turn the names into an array and then reverse it.
puts "enter name"
agent_name = gets.chomp.downcase.split(' ').reverse
new_name = agent_name.join(' ')


# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
# JUST FOR ME: for each letter in word (cat) take "c" compare it to the array of vowels. If there is a match (such as "a") find the vowel's index (in this case "a" is zero) and add one to it. Then set the letter to equal that value in the index.

# "Felicia Torres" will become "Vussit Gimodoe",

def vowel_changer(word)
  vowels = %w(a e i o u)
  consonants = %w(b c d f g h j k l m n p q r s t v w x y z)

  wordarray = word.split("")

  wordarray.map! do |letter|
    if vowels.include? letter
      vowel_index = vowels.index(letter) + 1
      letters = vowels[vowel_index]
    elsif consonants.include? letter
      consonant_index = consonants.index(letter) + 1
      letters = consonants[consonant_index]
    else
      letter
    end
  end
  wordarray.join
end