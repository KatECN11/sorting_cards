require 'minitest'
require './lib/guess'
require './lib/card'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class GuessTest < Minitest::Test

  def test_does_it_exist
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end

  def test_card
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal Card, guess.card
  end

  def test_correct?
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal true, guess.correct?
  end

  # def test_response("10 of Hearts", card)
  #   guess = Guess.new
  #   assert_equal "10 of Hearts", guess.response
  # end

end
