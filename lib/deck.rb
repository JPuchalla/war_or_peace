class Deck
  attr_reader :stack
  def initialize(stack)
    @stack = stack
  end

  def cards
    @stack
  end

  def rank_of_card_at(position)
    @stack[position].rank
  end

  def high_ranking_cards
      @stack.find_all {|card| card.rank >= 11}
  end


end
