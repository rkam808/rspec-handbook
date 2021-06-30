# allows us to mock a top-level Class
# testing CardGame, NOT Deck

# class Deck
#   def self.build
#     # Business logic to build 52 cards
#   end
# end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement Class methods that are defined on a class' do
    # class_double(Deck, build: ['Ace', 'Queen'], shuffle: ['Queen', 'Ace'])

    # as_stubbed_const will replace all calls to Deck with this double
    deck_klass = class_double('Deck', build: ['Ace', 'Queen']).as_stubbed_const

    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen'])
  end
end
