require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess.rb'
require './lib/card.rb'
require './lib/deck.rb'
require './lib/round.rb'


class RoundTest < Minitest::Test

  def test_if_it_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  def test_the_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal [], round.guesses
  end

  def test_the_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end

  def test_the_record_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("3 of Hearts")
    assert_instance_of Guess, round.guesses.first
  end

  def test_guesses_count
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("3 of Hearts")
    assert_equal 1, round.guesses.count
  end
  # require 'pry'; binding.pry
  def test_guesses_first_feedback
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("3 of Hearts")
    assert_equal "Correct", round.guesses.first.feedback
  end
  def test_number_correct?
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("3 of Hearts")
    assert_equal 1, round.number_correct
  end

  # second test of number correct - changed recorded guess value
  def test_second_record_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("Jack of Diamonds")
    assert_instance_of Guess, round.guesses.last
  end

  def test_second_record_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("Jack of Diamonds")
    assert_instance_of Guess, round.guesses.last
  end

  def test_guesses_count_two
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("3 of Hearts")
    round.record_guess("Jack of Diamonds")
    assert_equal 2, round.guesses.count
  end

  def test_guesses_last_feedback
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("3 of Hearts")
    round.record_guess("Jack of Diamonds")
    assert_equal "Incorrect", round.guesses.last.feedback
  end

  def test_number_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("3 of Hearts")
    round.record_guess("Jack of Diamonds")
    assert_equal 1, round.number_correct
  end

  def test_percentage
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("3 of Hearts")
    round.record_guess("Jack of Diamonds")
    assert_equal 50, round.percent_correct
  end
end
