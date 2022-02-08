# require './lib/board'
require './lib/computer'
require './lib/game'
require './lib/player'

RSpec.describe Player do
  before(:each) do
    @player = Player.new
  end
  it 'exists' do
    expect(@player).to be_a Player
  end
end
