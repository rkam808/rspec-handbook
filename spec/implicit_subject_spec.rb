# If you're testing a Class, recommended to use the Class itself rather than string of the Class (if already defined) because rspec enables helper functionalities
RSpec.describe Hash do
  it 'should start off empty' do
    expect(subject.length).to eq(0)

    # subject is isolated between examples, uses same instance for each example
    subject[:some_key] = 'some value'
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end
end
