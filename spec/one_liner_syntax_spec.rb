RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  # is_expected will refer to the 'subject' you declared above. Only available on 'subject'.
  context 'with one-liner' do
    it { is_expected.to eq(5) }
  end
end
