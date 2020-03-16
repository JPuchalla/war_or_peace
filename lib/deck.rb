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

  def percent_high_ranking
    (high_ranking_cards.count.to_f / @stack.count.to_f).round(4) * 100.to_f
  end

  def remove_card
    @stack.shift
  end


end
