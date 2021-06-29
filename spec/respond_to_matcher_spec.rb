class HotChocolate
  def drink
    'delicious'
  end

  def discard
    'PLOP!'
  end

  def purchase(number)
    "I just purchased #{number} more hot chocolates"
  end
end

RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it 'confirms an object can respond to a method with arguments' do
    # with(number of arguments to accept).arguments
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:drink, :discard) }
  it { is_expected.to respond_to(:purchase).with(1).argument }
end
