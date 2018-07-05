require './lib/guess.rb'
require './lib/card.rb'
require './lib/deck.rb'

class Round

attr_reader :deck, :guesses, :number_correct

  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0


  end

  def current_card
    @deck.cards.first

  end

  def record_guess(response)
    new_guess = Guess.new(response, current_card)
    @guesses << new_guess
    if new_guess.correct?
      @number_correct += 1
    end
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

  def current_card_second
    @deck.cards.last
  end

  def record_guess_second(response_two)
    new_guess = Guess.new(response, current_card)
    @guesses << new_guess
  end

  def record_guess_count_second(response_two)
    new_guess = Guess.new(response, current_card)
    @guesses << new_guess  
    @guesses.length
  end

  def test_guesses_last_feedback
    if response_array[0] == card.value && card.suit == response_array[-1]
      return "Correct!"
    else
      "Incorrect"
    end
  end

  def test_number_correct
      @guesses.map do |correct_guess|
        if correct_guess.correct? == true
        @number_correct += 1
        end
      end
  end

  def percent_correct

    (test_number_correct / @guesses.length) * 100

  end




end
