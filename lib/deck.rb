

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    cards.length
  end


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

  def sort_deck(deck)
    deck
    swapped = true
    while swapped do
      swapped = false
      (deck.cards.length - 1).times do |i|
        card_first_value = card_values_hash(deck.cards[i].value)
        card_second_value = card_values_hash(deck.cards[i + 1].value)
          if card_first_value > card_second_value
            deck.cards[i], deck.cards[i + 1] = deck.cards[i + 1], deck.cards[i]
            swapped = true
          elsif card_first_value == card_second_value
            first_card_suit = card_suit_value(deck.cards[i].suit)
            second_card_suit = card_suit_value(deck.cards[i + 1].suit)
            if first_card_suit > second_card_suit
              deck.cards[i], deck.cards[i + 1] = deck.cards[i + 1], deck.cards[i]
              swapped = true
            end
          end
      end
    end
    deck
  end


end
