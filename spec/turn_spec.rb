require './lib/turn'
require './lib/player'
require './lib/computer'
require './lib/board'
require './lib/game'

RSpec.describe Turn do
  before(:each) do
    game = Game.new
    turn = Turn.new
  end
  it 'exists' do
    expect(@turn).to be_instance_of(Turn)
  end
end
