require './lib/card.rb'

class Guess

attr_reader :card, :response

  def initialize(response, card)
    @response = response
    @card = card
  end

  def response_two_diamonds

  end

  def correct?
    @response == "#{@card.value} of #{@card.suit}"
  end

  def feedback
    if correct? == false
      "Incorrect"
    else
      "Correct!"
    end
  end


end
