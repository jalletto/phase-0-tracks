class Word_Game

  def initialize(word)
    @word = word
    @word_array = word.split('')
    @guesses = @word.length
    @guess_state = ("-" * @guesses).split('')
  end

  def check_guess_state
    p @guess_state
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
  end
end

game = Word_Game.new("bubble")
p game.check_guess_state
game.make_a_guess("b")
p game.check_guess_state
game.make_a_guess("l")
p game.check_guess_state
game.make_a_guess("w")
p game.check_guess_state

game.make_a_guess("e")
p game.check_guess_state

