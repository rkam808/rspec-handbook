class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe 'have_attributes matcher' do
  describe ProfessionalWrestler.new('Rey Mysterio', '619') do
    it 'checks for object attribute and proper values' do
      expect(subject).to have_attributes({ name: 'Rey Mysterio' })
      expect(subject).to have_attributes(name: 'Rey Mysterio', finishing_move: '619')
    end

    it { is_expected.to have_attributes(name: 'Rey Mysterio') }
    it { is_expected.to have_attributes(name: 'Rey Mysterio', finishing_move: '619') }
  end
end
