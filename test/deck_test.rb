require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'

class DeckTest < Minitest::Test
  def setup
    @card1 = Card.new(:diamond, 'Queen', 12)
    @card2 = Card.new(:spade, '3', 3)
    @card3 = Card.new(:heart, 'Ace', 14)
    @card4 = Card.new(:club, '5', 5)
    @cards = [@card1, @card2, @card3]

    @deck = Deck.new(@cards)
  end

  def test_it_exists
    assert_instance_of Deck, @deck
  end

  def test_it_can_retrieve_cards
    assert_equal [@card1, @card2, @card3], @deck.cards
  end

  def test_it_can_retrieve_attributes_of_cards
    assert_equal 12, @deck.rank_of_card_at(0)
    assert_equal 14, @deck.rank_of_card_at(2)
  end

  def test_it_can_show_current_cards
    assert_equal [@card1, @card2, @card3], @deck.cards
  end

  def test_it_shows_high_ranking_cards
    assert_equal [@card1, @card3], @deck.high_ranking_cards
  end

  def test_it_can_calculate_percent_of_high_ranked_cards
    assert_equal 66.67, @deck.percent_high_ranking
  end

  def test_it_can_remove_a_card_and_test_new_high_rank_and_percent
    @deck.remove_card
    assert_equal [@card2, @card3], @deck.cards
    assert_equal [@card3], @deck.high_ranking_cards
    assert_equal 50.0, @deck.percent_high_ranking
  end

  def test_it_can_add_a_card_and_update_high_rank_cards_and_percent
    @deck.remove_card
    @deck.add_card(@card4)
    assert_equal [@card2, @card3, @card4], @deck.cards
    assert_equal [@card3], @deck.high_ranking_cards
    assert_equal 33.33, @deck.percent_high_ranking
  end

end
