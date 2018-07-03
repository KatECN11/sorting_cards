class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards[0]
  end

  def record_guess(guess_hash)
    response = "#{guess_hash.values[0]} of #{guess_hash.values[1]}"
    guess = Guess.new(response, current_card)
    @guesses << guess
    guess
  end

  def number_correct
    count = 0
    @guesses.each do |guess|
      count += 1 if guess.correct?
    end
    return count
  end
end
