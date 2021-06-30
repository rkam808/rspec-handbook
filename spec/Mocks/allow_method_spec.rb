# Using allow on doubles and ruby instances

RSpec.describe 'allow method review' do
  it 'can customize return vlue for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)

    expect(calculator.add).to eq(15)
  end

  it 'can mock one or more methods on a real object' do
    arr = [1, 2, 3]
    # Mocking  actual methods
    allow(arr).to receive(:sum).and_return(10)

    expect(arr.sum).to eq(10)

    # Other methods still stand
    arr.push(4)
    expect(arr).to eq([1, 2, 3, 4])
  end

  it 'can return multiple return values in sequence' do
    mock_array = double
    # when giving multiple items to return, it will output in sequence
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil)
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
  end
end
