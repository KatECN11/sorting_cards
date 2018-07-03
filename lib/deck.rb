

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    cards.length
  end



# Access the deck array elements, which are each a card. Each card has a value
# and a suit. Ultimately, I want to put those values in order with the suit being
# the tie breaker.

#To first compare the values, each value needs to be turned from a string to
# an integer and assigned a value.  Jack = 11, Queen = 12, King = 13, Ace = 14
#  I could have a hash = card_values which has the string as the key and the
# numberical value as the value.  Then in the sort method, I would call this hash
# to determine the value of the card.  If there is a tie, then the sorter
# would look at the suit_hash which would have the string of suits as the key
# and the given values of those suits as their values.

 def card_values_hash(card_value)
   card_value_hash = {"4"=>4,
     "5" => 5,
     "Jack"=> 11,
     "Ace" => 14}
     card_value_hash[card_value]
  end

  def card_suit_value(card_suit)
    card_suit_hash = {"Clubs" => 1,
                "Diamonds" => 2,
                "Hearts" => 3,
                "Spades" => 4}
    card_suit_hash[card_suit]
  end

  def sort_deck_by_value(deck)
    swapped = true
    while swapped do
      swapped = false
      sorted_cards = (deck.cards.length - 1).times do |i|
        card_first_value = card_values_hash(deck.cards[i].value)
        card_second_value = card_values_hash(deck.cards[i + 1].value)
          if card_first_value > card_second_value
            deck.cards[i], deck.cards[i + 1] = deck.cards[i + 1], deck.cards[i]

            swapped = true
          end
          require "pry"; binding.pry
      end
    end
  end




  #   card_values_hash(deck[index].value)
  # end

# I would then need to assign the suits a value for the tie breaker, Clubs,
# Diamonds, Hearts, and Spades with values 1-4.
# Then use a bubble sort to compare the values of the cards to sort them.
# If there is a tie, then the sorter would look at the suit value to determine
# which card goes first.
# The cards should then be in order.






end
