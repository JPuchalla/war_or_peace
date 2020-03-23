require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

class TurnTest < Minitest::Test
  def setup
    @card1 = Card.new(:heart, 'Jack', 11)
    @card2 = Card.new(:heart, '10', 10)
    @card3 = Card.new(:heart, '9', 9)
    @card4 = Card.new(:diamond, 'Jack', 11)
    @card5 = Card.new(:heart, '8', 8)
    @card6 = Card.new(:diamond, 'Queen', 12)
    @card7 = Card.new(:heart, '3', 3)
    @card8 = Card.new(:diamond, '2', 2)

    @deck1 = Deck.new([@card1, @card2, @card5, @card8])
    @deck2 = Deck.new([@card3, @card4, @card6, @card7])

    @player1 = Player.new("Megan", @deck1)
    @player2 = Player.new("Aurora", @deck2)
    @turn = Turn.new(@player1, @player2)
  end

  def test_it_exists
    assert_instance_of Turn, @turn
  end

  def test_player1_and_player2_turns
    assert_equal @player1, @turn.player1
    assert_equal @player2, @turn.player2
  end

  def test_if_spoils_of_war_holds_anything
    assert_equal [], @turn.spoils_of_war
  end

  def test_player1_and_player2_deck
    assert_equal @deck1, @player1.deck
    assert_equal @deck2, @player2.deck
  end

  def test_if_basic_is_turn_type
    assert_equal :basic, @turn.type
  end

  def test_it_can_calculate_winner
    assert_equal @player1, @turn.winner
  end

  def test_if_it_can_pile_cards
    assert_equal true, @turn.player1.deck.cards[1].rank == @turn.player2.deck.cards[1].rank
     assert_equal false, @turn.player1.deck.cards[0].rank == @turn.player2.deck.cards[0].rank
     assert_equal true, @turn.player1.deck.rank_of_card_at(1) == @turn.player2.deck.rank_of_card_at(1)
     assert_equal false, @turn.player1.deck.rank_of_card_at(0) == @turn.player2.deck.rank_of_card_at(0)

  end


end
