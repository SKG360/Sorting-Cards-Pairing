# require './lib/card.rb'

class Guess

attr_reader :card, :response

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    card_output = "#{@card.value} of #{@card.suit}"
    card_output == @response
  end

  def feedback
    card_output = "#{@card.value} of #{@card.suit}"
    if
      card_output == @response
      return "Correct"
    else
      "Incorrect"
    end
  end



end
