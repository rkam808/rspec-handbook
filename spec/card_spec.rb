class Card
  attr_reader :suit
  attr_accessor :rank

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # before(:each) do
  #   @card = Card.new('Ace', 'Spades')
  # end
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank and rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    comparison = 'Spade'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but I got #{card.suit} instead!"
  end
end
