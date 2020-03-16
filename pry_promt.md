


deck.rank_of_card_at(0)
#=> 12

deck.rank_of_card_at(2)
#=> 14

deck.cards
#=> [#<Card:0x007fbfd18490e8...>, #<Card:0x007fbfd19f4fa0...>, #<Card:0x007fbfd18555a0...>]

deck.high_ranking_cards
#=> [#<Card:0x007fbfd18490e8...>, #<Card:0x007fbfd18555a0...>]

deck.percent_high_ranking
#=> 66.67

deck.remove_card
#=> #<Card:0x007fbfd18490e8 @rank=12, @suit=:diamond, @value="Queen">

deck.cards
#=> [#<Card:0x007fbfd19f4fa0...>, #<Card:0x007fbfd18555a0...>]

deck.high_ranking_cards
#=> [#<Card:0x007fbfd18555a0...>]

deck.percent_high_ranking
#=> 50.0

card4 = Card.new(:club, '5', 5)
#=> #<Card:0x007fbfd2963978 @rank=5, @suit=:club, @value="5">

deck.add_card(card4)

deck.cards
#=> [#<Card:0x007fbfd19f4fa0...>, #<Card:0x007fbfd18555a0...>, #<Card:0x007fbfd2963978...>]

deck.high_ranking_cards
#=> [#<Card:0x007fbfd18555a0...>]

deck.percent_high_ranking
#=> 33.33
