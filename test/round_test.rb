require 'minitest'
require './lib/guess'
require './lib/card'
require './lib/deck'
require './lib/round'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class RoundTest < Minitest::Test

  def test_does_it_exist
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  def test_have_deck_oject
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal deck, round.deck
  end

  def test_guesses_in_array
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal [], round.guesses
  end

  def test_show_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end

  def test_does_it_record_the_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess("3 of Hearts")

    assert_instance_of Guess, guess
    # this test passes bc in #record_guess I did Guess.new which created
    # a new instance of Guess
    assert_equal card_1, guess.card
    # Above tests that my card_1 object is the same as guess.card
    #
    assert_equal "3 of Hearts", guess.response
  end

  def test_does_it_return_count
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess("3 of Hearts")
    assert_equal 1, round.guesses.count

  end

  def test_does_it_give_correct_feedback
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess("3 of Hearts")
    assert_equal "Correct!", round.guesses.first.feedback

  end

  def test_how_many_are_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess("3 of Hearts")
    guess_2 = round.record_guess("Jack of Diamonds")

    assert_equal 1, round.number_correct
  end

end
