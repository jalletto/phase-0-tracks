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

  attr_reader :guesses, :word

  def initialize(word)
    @word = word
    @word_array = word.split('')
    @guesses = @word.length
    @guess_state = ("_" * @guesses).split('')
  end

  def check_guess_state
    p @guess_state.join(" ")
  end

  def make_a_guess(letter)
    counter = 0
    @word_array.each do |item|

      if item == letter
        @guess_state.insert(counter, letter)
        @guess_state.delete_at(counter + 1)
      end
      counter += 1

    end
    @guesses -= 1
  end
end

puts "Enter a word for your friend to guess."

game = Word_Game.new(gets.chomp)

until game.guesses == 0 || game.check_guess_state == game.word
  puts "You have  #{game.guesses} guesses remaining."
  puts "Guess a letter."

  game.make_a_guess(gets.chomp)
  game.check_guess_state
  puts "You have  #{game.guesses} guesses remaining."
end

if game.guesses == 0
  puts "You have failed! The correct answer is #{game.word}"
end

if game.check_guess_state == game.word
  puts "You have succeeded! he correct answer is #{game.word}"
end


