# Swapping the first and last name.
# turn the names into an array and then reverse it.
puts "enter name"
agent_name = gets.chomp.downcase.split(' ').reverse
new_name = agent_name.join(' ')


# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

# for each letter in word (cat) take "c" compare it to the array of vowels if there is a match (such as "a") find the vowel's index (in this case a is one) and add one to it. Then set the letter to equal that value in the index.



def vowel_changer(word)
  vowels = %w(a e i o u)

  wordarray = word.split("")

  wordarray.map! do |letter|
    if vowels.include? letter
      vowel_index = vowels.index(letter) + 1
      letters = vowels[vowel_index]
    else
      letter
    end
  end
  wordarray.join
end

p vowel_changer(new_name)