require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card.rb'


class CardTest < Minitest::Test

  def test_it_exists
    ace_of_spades = Card.new("Ace", "Spades")
    assert_instance_of(Card, ace_of_spades)
  end

  def test_the_attributes
    ace_of_spades = Card.new("Ace", "Spades")
    assert_equal("Ace", ace_of_spades.value)
    assert_equal("Spades", ace_of_spades.suit)
  end

end
