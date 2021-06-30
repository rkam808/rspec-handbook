# verifying double: verifies interface of double matches instance methods of testing Class

class Person
  def a(seconds)
    sleep(seconds)
    'Hello'
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      # arbitrarily adding instances
      person = double(a: 'Hello', b: 20)
      expect(person.a).to eq('Hello')
    end
  end

  describe 'instance double' do
    it 'can only implement methods that are defined on the class' do
      # creating a mock of an instance of the Person Class
      # person = instance_double(Person, a: 'Hello', b: 20)
      person = instance_double(Person)
      # allow(person).to receive(:a).with(3, 10).and_return('Hello')
      allow(person).to receive(:a).with(3).and_return('Hello')
      expect(person.a(3)).to eq('Hello')
    end
  end
end
