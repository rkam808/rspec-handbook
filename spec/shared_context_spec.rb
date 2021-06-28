RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variables' do
    expect(@foods.length).to eq(0)
  end

  it 'can use helper methods' do
    expect(some_helper_method).to eq(5)
  end
end

# when importing in a different file:
# require './other_file_name.rb'
RSpec.describe 'second example in different file' do
  include_context 'common'

  it 'can use shared let variable' do
    expect(some_variable.length).to eq(3)
  end
end
