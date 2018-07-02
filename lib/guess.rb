

class Guess
  attr_reader :response
  attr_reader :card


  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    suit = @response.split.last
    value = @response.split[0]
    return card.value == value && card.suit == suit
  end

  def feedback
    if correct? == true
      "Correct!"
    else
      "Incorrect."
    end
  end


end
