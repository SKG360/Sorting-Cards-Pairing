require './lib/guess.rb'
require './lib/card.rb'
require './lib/deck.rb'

class Round

attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []

  end

  def current_card
    @deck.cards.first

  end

  def record_guess(response)
    @guesses << Guess.new(response, current_card)
  end

  def guesses_count

  end

  def response_array
    @response.split(" ")

  end

  def first_feedback

    if response_array[0] == card.value && card.suit == response_array[-1]
      return "Correct!"
    else
      "Incorrect"
    end

  end

end
