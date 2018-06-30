require 'minitest'
require './lib/card'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class CardTest < Minitest::Test

  def test_does_it_exist
    card = Card.new
    assert_instance_of Card, card
  end

end
