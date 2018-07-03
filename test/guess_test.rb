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
    assert_equal card, guess.card
  end

  def test_correct_for_true
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal true, guess.correct?
  end

  def test_correct_for_false
    card = Card.new("9", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal false, guess.correct?
  end


  def test_response
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "10 of Hearts", guess.response
  end

  def test_feedback_correct
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "Correct!", guess.feedback
  end

  
end
