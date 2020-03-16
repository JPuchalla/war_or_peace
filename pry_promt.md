


card4 = Card.new(:club, '5', 5)
#=> #<Card:0x007fbfd2963978 @rank=5, @suit=:club, @value="5">

deck.add_card(card4)

deck.cards
#=> [#<Card:0x007fbfd19f4fa0...>, #<Card:0x007fbfd18555a0...>, #<Card:0x007fbfd2963978...>]

deck.high_ranking_cards
#=> [#<Card:0x007fbfd18555a0...>]

deck.percent_high_ranking
#=> 33.33
