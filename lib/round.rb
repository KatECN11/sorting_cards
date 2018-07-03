class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @guess_counter = 0
  end

  def current_card
    @deck.cards[@guess_counter]
  end

  def record_guess(guess_hash)
    response = "#{guess_hash.values[0]} of #{guess_hash.values[1]}"
    guess = Guess.new(response, current_card)
    @guesses << guess
    @guess_counter += 1
    guess
  end

  def number_correct
    count = 0
    @guesses.each do |guess|
      count += 1 if guess.correct?
    end
    return count
  end

  def percent_correct
    (number_correct.to_f / @guesses.count) * 100
  end

end
