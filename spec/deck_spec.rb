require 'deck'

RSpec::Matchers.define(:be_contiguous) do
    match do |array|
    #     array
    #     .sort
    #     .each_cons(2)
    #     .all? {|x,y| x + 1 == y}
        !first_non_contiguous_pair(array)
    end

    failure_message do |array|
        "%s and %s were not contiguous" % first_non_contiguous_pair(array)
    end

    def first_non_contiguous_pair(array)
        array
            .sort
            .each_cons(2)
            .detect {|x, y| x + 1 != y }
    end
end

describe 'Deck' do
    describe '.all' do
        it 'contains 32 cards' do
            expect(Deck.all.length).to eq(32)
        end

        # it 'has a seven as its lowest card' do
        #     expect(Deck.all).to all(have_attributes(rank: be >= 7))
        # end
        it 'has contigous ranks by suit' do
            Deck.all.group_by {|card| card.suit }.each do |suit, cards|
                cards
                    .map {|card| card.rank}
                    .sort
                    .each_cons(2)
            end
        end
    end
end