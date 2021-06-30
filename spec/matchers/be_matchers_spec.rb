# matching falsy and truthy values

RSpec.describe 'be matchers' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect('hello').to be_truthy
  end

  it 'can test for falsiness' do
    expect(nil).to be_falsy
    expect(false).not_to be_truthy
  end

  it 'can test for nil' do
    expect(nil).to be_nil

    my_hash = { a: 5 }
    expect(my_hash[:b]).to be_nil
  end
end
