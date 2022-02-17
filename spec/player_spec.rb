require './lib/board'
require './lib/game'
require './lib/player'

RSpec.describe Player do
  before(:each) do
    @player_1= Player.new("Player", :human)
    @player_2 = Player.new("Roboto", :computer)
  end
  it 'exists' do
    expect(@player_1).to be_instance_of Player
  end

  it 'has attributes' do
    expect(@player_1.name).to eq("Player")
    expect(@player_1.piece).to eq("X")
  end

  it 'can tell computer player' do

  expect(@player_2.name).to eq("Roboto")
  expect(@player_2.piece).to eq("O")
  end
end
