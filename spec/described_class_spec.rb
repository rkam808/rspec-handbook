class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

# Using described_class rather than the Class name to future-proof the code in case of changes to Class name.
RSpec.describe King do
  subject { described_class.new('Ryan') }
  let(:luke) { described_class.new('Luke') }

  it 'represents a great person' do
    expect(subject.name).to eq('Ryan')
    expect(luke.name).to eq('Luke')
  end
end
