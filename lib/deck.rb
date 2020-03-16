class Deck
  def initialize(stack)
    @stack = stack
  end

  def cards
    @stack
  end

  def rank_of_card_at(position)
    @stack[position].rank
    require "pry"; binding.pry
  end

end
