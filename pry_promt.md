
 turn.player1
#=> #<Player:0x007fa3edae29d0 @deck=#<Deck:0x007fa3eda472c8...>, @name="Megan">

 turn.player2
#=> #<Player:0x007fa3ed9e6568 @deck=#<Deck:0x007fa3ee11ee48...>, @name="Aurora">

 turn.spoils_of_war
#=> []

 turn.type
#=> :basic

 winner = turn.winner
#=> #<Player:0x007fa3edae29d0 @deck=#<Deck:0x007fa3eda472c8...>, @name="Megan">

 turn.pile_cards

 turn.spoils_of_war
#=> [#<Card:0x007fa3edaa0df0 @rank=11, @suit=:heart, @value="Jack">, #<Card:0x007fa3ed98d9b8 @rank=9, @suit=:heart, @value="9">]

 turn.award_spoils(winner)

 player1.deck
#=> #<Deck:0x007fa3eda472c8 @cards=[#<Card:0x007fa3eda519a8...>, #<Card:0x007fa3edb263d8...>, #<Card:0x007fa3eda89308...>, #<Card:0x007fa3edaa0df0...>, #<Card:0x007fa3ed98d9b8...>]>
 player2.deck
#=> #<Deck:0x007fa3ee11ee48 @cards=[#<Card:0x007fa3ee14ef80...>, #<Card:0x007fa3eda3e1f0...>, #<Card:0x007fa3edad1cc0...>]>

# turn type :war
 require './lib/card'
#=> true
 require './lib/deck'
#=> true
 require './lib/player'
#=> true
 require './lib/turn'
#=> true

 card1 = Card.new(:heart, 'Jack', 11)    
#=> #<Card:0x007fc42a170fe8 @rank=11, @suit=:heart, @value="Jack">
 card2 = Card.new(:heart, '10', 10)    
#=> #<Card:0x007fc42a0f1b58 @rank=10, @suit=:heart, @value="10">
 card3 = Card.new(:heart, '9', 9)    
#=> #<Card:0x007fc42aa85a98 @rank=9, @suit=:heart, @value="9">
 card4 = Card.new(:diamond, 'Jack', 11)    
#=> #<Card:0x007fc42a205508 @rank=11, @suit=:diamond, @value="Jack">
 card5 = Card.new(:heart, '8', 8)    
#=> #<Card:0x007fc42a2149e0 @rank=8, @suit=:heart, @value="8">
 card6 = Card.new(:diamond, 'Queen', 12)    
#=> #<Card:0x007fc42a1e4790 @rank=12, @suit=:diamond, @value="Queen">
 card7 = Card.new(:heart, '3', 3)    
#=> #<Card:0x007fc42a1b4c98 @rank=3, @suit=:heart, @value="3">
 card8 = Card.new(:diamond, '2', 2)    
#=> #<Card:0x007fc42a1580d8 @rank=2, @suit=:diamond, @value="2">

 deck1 = Deck.new([card1, card2, card5, card8])    
#=> #<Deck:0x007fc42a05a258 @cards=[#<Card:0x007fc42a170fe8...>, #<Card:0x007fc42a0f1b58...>, #<Card:0x007fc42a2149e0...>, #<Card:0x007fc42a1580d8...>]>

 deck2 = Deck.new([card4, card3, card6, card7])    
#=> #<Deck:0x007fc42a248678 @cards=[#<Card:0x007fc42a205508...>, #<Card:0x007fc42aa85a98...>, #<Card:0x007fc42a1e4790...>, #<Card:0x007fc42a1b4c98...>]>

 player1 = Player.new("Megan", deck1)    
#=> #<Player:0x007fc42a113000 @deck=#<Deck:0x007fc42a05a258...>, @name="Megan">

 player2 = Player.new("Aurora", deck2)    
#=> #<Player:0x007fc42aab6b70 @deck=#<Deck:0x007fc42a248678...>, @name="Aurora">

 turn = Turn.new(player1, player2)    
#=> #<Turn:0x007fc42a20d488 @player1=#<Player:0x007fc42a113000 @deck=#<Deck:0x007fc42a05a258...>, @name="Megan">, @player2=#<Player:0x007fc42aab6b70 @deck=#<Deck:0x007fc42a248678...>, @name="Aurora">, @spoils_of_war=[]>

 turn.type
#=> :war

 winner = turn.winner
#=> #<Player:0x007fc42aab6b70 @deck=#<Deck:0x007fc42a248678...>, @name="Aurora">

 turn.pile_cards

 turn.spoils_of_war
#=> [#<Card:0x007fc42a170fe8...>, #<Card:0x007fc42a0f1b58...>, #<Card:0x007fc42a2149e0...>, #<Card:0x007fc42a205508...>, #<Card:0x007fc42aa85a98...>, #<Card:0x007fc42a1e4790...>]

 turn.award_spoils(winner)

 player1.deck
#=> #<Deck:0x007fc42a05a258 @cards=[#<Card:0x007fc42a1580d8...>]>

 player2.deck
#=> #<Deck:0x007fc42a248678 @cards=[#<Card:0x007fc42a1b4c98...>, #<Card:0x007fc42a170fe8...>, #<Card:0x007fc42a0f1b58...>, #<Card:0x007fc42a2149e0...>, #<Card:0x007fc42a205508...>, #<Card:0x007fc42aa85a98...>, #<Card:0x007fc42a1e4790...>]>
# turn type :mutually_assured_destruction
 require './lib/card'
#=> true
 require './lib/deck'
#=> true
 require './lib/player'
#=> true
 require './lib/turn'
#=> true

 card1 = Card.new(:heart, 'Jack', 11)    
#=> #<Card:0x007fadb0922f38 @rank=11, @suit=:heart, @value="Jack">
 card2 = Card.new(:heart, '10', 10)    
#=> #<Card:0x007fadaf8c8458 @rank=10, @suit=:heart, @value="10">
 card3 = Card.new(:heart, '9', 9)    
#=> #<Card:0x007fadaf9ab320 @rank=9, @suit=:heart, @value="9">
 card4 = Card.new(:diamond, 'Jack', 11)    
#=> #<Card:0x007fadb1046fa8 @rank=11, @suit=:diamond, @value="Jack">
 card5 = Card.new(:heart, '8', 8)    
#=> #<Card:0x007fadb0a247d8 @rank=8, @suit=:heart, @value="8">
 card6 = Card.new(:diamond, '8', 8)    
#=> #<Card:0x007fadaf9e8e28 @rank=8, @suit=:diamond, @value="8">
 card7 = Card.new(:heart, '3', 3)    
#=> #<Card:0x007fadaf130858 @rank=3, @suit=:heart, @value="3">
 card8 = Card.new(:diamond, '2', 2)    
#=> #<Card:0x007fadaf96b180 @rank=2, @suit=:diamond, @value="2">

 deck1 = Deck.new([card1, card2, card5, card8])    
#=> #<Deck:0x007fadaf94aae8 @cards=[#<Card:0x007fadb0922f38...>, #<Card:0x007fadaf8c8458...>, #<Card:0x007fadb0a247d8...>, #<Card:0x007fadaf96b180...>]>

 deck2 = Deck.new([card4, card3, card6, card7])    
#=> #<Deck:0x007fadb1086f40 @cards=[#<Card:0x007fadb1046fa8...>, #<Card:0x007fadaf9ab320...>, #<Card:0x007fadaf9e8e28...>, #<Card:0x007fadaf130858...>]>

 player1 = Player.new("Megan", deck1)    
#=> #<Player:0x007fadaf8b16e0 @deck=##<Deck:0x007fadaf94aae8 ...>, @name="Megan">

 player2 = Player.new("Aurora", deck2)    
#=> #<Player:0x007fadb0a47800 @deck=#<Deck:0x007fadb1086f40 ...>, @name="Aurora">

 turn = Turn.new(player1, player2)    
#=> #<Turn:0x007fadaf240fe0 @player1=#<Player:0x007fadaf8b16e0 @deck=##<Deck:0x007fadaf94aae8 ...>, @name="Megan">, @player2= #<Player:0x007fadb0a47800 @deck=#<Deck:0x007fadb1086f40 ...>, @name="Aurora">, @spoils_of_war=[]>

 turn.type
#=> :mutually_assured_destruction

 winner = turn.winner
#=> "No Winner"

 turn.pile_cards

 turn.spoils_of_war
#=> []
 player1.deck
#=> #<Deck:0x007fadaf94aae8 @cards=[#<Card:0x007fadaf96b180...>]>
 player2.deck
#=> #<Deck:0x007fadb1086f40 @cards=[#<Card:0x007fadaf130858...>]>
