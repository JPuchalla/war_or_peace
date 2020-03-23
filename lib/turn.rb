class Turn
  attr_reader :player1, :player2, :spoils_of_war
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
  end

  def type
    type_result = nil
    if player1.deck.rank_of_card_at(0) !=
      player2.deck.rank_of_card_at(0)
    type_result =  :basic
    elsif player1.deck.rank_of_card_at(0) ==
      player2.deck.rank_of_card_at(0)
      type_result = :war
    elsif (player1.deck.rank_of_card_at(0) ==
      player2.deck.rank_of_card_at(0) &&
      player1.deck.rank_of_card_at(2) ==
      player2.deck.rank_of_card_at(2))
      type_result = :mutually_assured_destruction
    end
    type_result
  end

  def winner
    if type == :basic
      if player1.deck.rank_of_card_at(0) >
        player2.deck.rank_of_card_at(0)
        player1
      else
        player2
      end
    elsif type == :war
      if player1.deck.rank_of_card_at(2) >
        player2.deck.rank_of_card_at(2)
        player1
      else
        player2
      end
    elsif type == :mutually_assured_destruction
      "No Winner!"
    end
  end

  def pile_cards
    spoils_of_war
  if type == :basic
    spoils_of_war << player1.deck.cards[0]
    spoils_of_war << player2.deck.cards[0]
    player1.deck.remove_card
    player2.deck.remove_card
    spoils_of_war
    return
  elsif type == :war
    spoils_of_war << player1.deck.cards[0..2]
    spoils_of_war << player2.deck.cards[0..2]
    3.times {player1.deck.remove_card}
    3.times {player2.deck.remove_card}
    spoils_of_war
    return
  elsif  type == :mutually_assured_destruction
    3.times {player1.deck.remove_card}
    3.times {player2.deck.remove_card}
    return
  end
  end
  def award_spoils(winner)
   if spoils_of_war.length > 0
     spoils_of_war.each do |card|
       winner.deck.cards << card
     end
   end
  end
end
