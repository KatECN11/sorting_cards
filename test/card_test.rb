require 'minitest'
require './lib/card'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class CardTest < Minitest::Test

  def test_does_it_exist
    card = Card.new("2", "Spades")
    assert_instance_of Card, card
  end

  def test_read_value
    card = Card.new("2", "Spades")
    assert_equal "2", card.value
  end

  def test_suit_reader
    card = Card.new("2", "Spades")
    assert_equal "Spades", card.suit
  end
  
end
