

require_relative 'word_Game'

describe Word_Game do
 let(:game) {Word_Game.new("bubble")}

 it "prints current state of guesses" do
  expect(game.check_guess_state).to eq %w(_ _ _ _ _ _)
 end

 it "checks if your letter is included and updates guess array" do
    game.make_a_guess("b")
    expect(game.check_guess_state).to  eq %w(b _ b b _ _ )
  end



end