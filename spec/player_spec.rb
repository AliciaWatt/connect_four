require './lib/board'
require './lib/computer'
require './lib/game'
require './lib/player'

RSpec.describe Player do
  before(:each) do
    @board = Board.new
    @player = Player.new
  end
  it 'exists' do
    expect(@player).to be_a Player
  end

  it 'has attributes' do
    expect(player.name).to eq "Player"
    expect(player.column_choice).to eq("")
  end

  it 'can place a piece in the choosen column'do
    expect(@board.cells["A1"]).to eq("X")
  end
end
