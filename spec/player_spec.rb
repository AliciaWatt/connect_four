require './lib/board'
require './lib/game'
require './lib/player'

RSpec.describe Player do
  before(:each) do
    @board = Board.new
    @player = Player.new
  end
  it 'exists' do
    expect(@player).to be_instance_of Player
  end

  it 'has attributes' do
    @player_1 = Player.new
    expect(@player_1.name).to eq("Player")
    expect(@player_1.piece).to eq("X")

  end
end
