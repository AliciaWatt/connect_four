require './lib/game'

RSpec.describe Game do
  before(:each) do
    @game = Game.new
  end

  it 'exists' do
    expect(@game).to be_instance_of(Game)
  end

  it 'has attributes' do
    # expect(game.board).to be_instance_of(Board)
    expect(@game.player).to be_instance_of(Player)
    expect(@computer.computer).to be_instance_of(Computer)
  end

  it 'can prompt the player to choose a column' do
    board = @game.board
    player = @game.player
    expect(@game.start).to be_a(String)
  end

  it 'can take turns' do
    player = @game.player
    computer = @game.computer
    board = @game.board
  end
end
