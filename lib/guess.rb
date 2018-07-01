require './lib/card'
require 'pry'

class Guess
  attr_reader :response
  attr_reader :card


  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    suit = @response.split[0]
    value = @response.split.last
    binding.pry

    return card.value == value && card.suit == suit
    binding.pry
  end



end

# When a guess comes in, it will be a string,
# will need to break that string up into an array,
# take the first element and and store it as the
# value, then take the last element and store it as
# the suit. Then store these values in the response variable
# which can be called back.
#
# Compare the guess to the actual card value, if they
# match, tell the user they are correct.  If they
# are wrong, tell them so.
