RSpec.describe 'not_to method' do
  it 'checks that two values do not match' do
    expect(5).not_to eq(10)
    expect('Hello').not_to eq('hello')
  end
end
