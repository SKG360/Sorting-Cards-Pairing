require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess.rb'
require './lib/card.rb'


<<<<<<< HEAD
=======

>>>>>>> b5d539ee546746ec3bf5b0671c157feef725b43e
class GuessTest < Minitest::Test

  def test_it_exists
    card = Card.new("10 of Hearts", card)
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end

end
