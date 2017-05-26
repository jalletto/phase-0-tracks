# Game Class

# Instance Variables

# The word given.

# Number of guesses.

# Keep track of past guesses

# current state of word

# Instance Methods:
# Check a string and see if it contains a given letter.
# Check to see if the letter has already been guessed.
# Reveal what letters of a word have been guessed.

# Create an array for the word to be guessed.
# Check the guessed letter against that array.
# If the array includes the letter, then the guess is shoveled into a new array with length equal to the word being guessed. Use index of matched letter to find index position for new letter.

class Word_Game

  attr_reader :guesses, :word_array, :guessed_letters, :word, :guess_state

  def initialize(word)
    @word = word
    @word_array = word.split('')
    @guesses = @word.length
    @guess_state = ("_" * @guesses).split('')
    @guessed_letters = []
  end


  def make_a_guess(letter)
    counter = 0

    if @guessed_letters.include? letter
      false

    else
        @word_array.each do |item|

        if item == letter
          @guess_state.insert(counter, letter)
          @guess_state.delete_at(counter + 1)
          @guessed_letters << letter
        end
        counter += 1
        true
      end
      @guesses -= 1
    end
  end
end

# User Interface

puts "Enter a word for your friend to guess."

game = Word_Game.new(gets.chomp.downcase)

until game.guesses == 0 || game.guess_state == game.word_array
  p game.guess_state.join(" ")
  puts "Guess a letter."

  if game.make_a_guess(gets.chomp.downcase)

    puts "You have #{game.guesses} guesses remaining."
  else
    puts "You already guessed that letter. Try a new letter."
    puts "You have #{game.guesses} guesses remaining."
  end

end

if game.guesses == 0 && game.guess_state != game.word_array
  puts "You have failed! The correct answer is #{game.word}"
end

if game.guess_state == game.word_array
  puts "You have succeeded! The correct answer is #{game.word}"
end


