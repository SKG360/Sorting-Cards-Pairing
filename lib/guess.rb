# require './lib/card.rb'

class Guess


  def initialize(response, card)

    @response = response
    @card = card

  end

  def response
    @response
  end

  def card
    @card
  end


  guess = Guess.new("10 of Hearts", @card)
  p guess.response
  p guess.card
end
