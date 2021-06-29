RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'should check for substring at beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')

      expect(subject.capitalize).to start_with('Cat')
    end

    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at beginning or end of array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b, :c)
      expect(subject).to end_with(:c, :d)
    end

    it { is_expected.to start_with(:a) }
  end
end
