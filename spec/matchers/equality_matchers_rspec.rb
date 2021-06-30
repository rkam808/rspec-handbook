RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq(3)
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'tests for value, including same type' do
      expect(a).not_to eql(b)
      expect(a).not_to eql(3)
    end
  end

  # Checking the same object in memory (IDENTITY, not equality)
  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to equal(e)
      expect(d).not_to equal(c)

      expect(c).not_to be(d)
    end
  end
end
