RSpec.describe 'comparison matchers' do
  it 'allows for comparison with built-in Ruby operators' do
    expect(10).to be > 5
    expect(1).to be <= 1
  end

  describe 100 do
    it { is_expected.to be > 90 }
  end
end
