require './lib/turn'
require './lib/player'
require './lib/computer'
require './lib/board'
require './lib/game'

RSpec.describe Turn do
  before(:each) do
    game = Game.new
    player = game.player
    computer = game.computer
    turn = Turn.new(player, computer, board)
    board = game.board
    board.render
  end
  it 'exists' do
    expect(@turn).to be_instance_of(Turn)
  end

  it 'has attributes' do
    expect(turn.player).to be_instance_of(Player)
    expect(turn.computer).to be_instance_of(Computer)
  end

  it 'can ask a player to choose a column' do
    expect(turn.prompt_player). to be_a String
  end

  it 'can check if players column selection is valid' do

  end

  it 'can place the players piece in the correct cell' do

  end

  it 'can render the board after the players piece is placed' do
    column = "A"
    turn.place_player_piece(column)
    expect(turn.board.render).to be_an Array
  end

  it 'can render a random column for computer' do
    expect(turn.computer_choice).to be_a(String)
  end

  it 'can validate computers column selection' do
    expect(turn.invalid?(column)).to eq(false)
  end

  it 'can render the board after the computer places a piece' do
    expect(turn.board.render).to be_an Array 
  end
end
