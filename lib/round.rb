class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards[0]
  end

  def record_guess(response)
# can call in the method because it's calling in the return value of
# the method
    guess = Guess.new(response, current_card) #Guess.new takes 2 arguments
    @guesses << guess
    guess

  end

  def number_correct
    correct = 0
    @guesses.each do |guess|
        correct +=1 if guess.correct?
      end
      correct
    end

end
