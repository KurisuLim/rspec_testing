require 'card'

class Deck
    # ALL ranks, from 7 to ace
    RANKS = (6..9).to_a + [:jack, :queen, :king, :ace]

    # ALL four suits
    SUITS = [:hearts, :clubs, :diamonds, :spades]

    def self.all 
        # For every suit next to every rank...
        SUITS.products(RANKS).map do |suit, rank|
            # Add that card to the deck
            Card.build(suit, rank)
        end
    end
end