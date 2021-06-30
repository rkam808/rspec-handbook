# test double to stand-in for other objects in the program

RSpec.describe 'random double' do
  it 'only allows defined methods to be invoked' do
    # # second argument is given methods and replies double can respond to
    # stuntman = double('Mr. Danger', { fall_off_ladder: 'Ouch', light_on_fire: true })

    # # strict double: must define methods it can respond to and replies
    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to eq(true)

    # stuntman = double("Mr. Daner")
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    # expect(stuntman.fall_off_ladder).to eq('Ouch')

    stuntman = double("Mr. Danger")
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end
end
