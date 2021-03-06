require './lib/turn'
require './lib/player'
require './lib/computer'
require './lib/board'
require './lib/game'

RSpec.describe Turn do
  before(:each) do
    @board = Board.new
    @player = Player.new("Player", :human)
    @computer = Player.new("Roboto", :computer)
    @turn = Turn.new(@player, @computer, @board)
    @board.render
  end
  it 'exists' do
    expect(@turn).to be_instance_of(Turn)
  end

  it 'has attributes' do
    expect(@turn.player).to be_instance_of(Player)
    expect(@turn.computer).to be_instance_of(Player)
  end

  # it 'can ask a player to choose a column' do
  #   expect(turn.prompt_player).to be_a String
  # end
  #
  # it 'can check if players column selection is valid' do
  # end
  #
  # it 'can place the players piece in the correct cell' do
  # end
  #
  # it 'can render the board after the players piece is placed' do
  #   column = "A"
  #   turn.place_player_piece(column)
  #   expect(turn.board.render).to be_an Array
  # end
  #
  # it 'can render a random column for computer' do
  #   expect(turn.computer_choice).to be_a(String)
  # end
  #
  # it 'can validate computers column selection' do
  #   expect(turn.invalid?(column)).to eq(false)
  # end
  #
  # it 'can render the board after the computer places a piece' do
  #   expect(turn.board.render).to be_an Array
  # end
  #
  # it 'can have player and computer pieces on the board' do
  #   column = "A"
  #   turn.place_player_piece(column)
  #   expect(turn.board.render).to be_an(Array)
  #
  #   column = turn.computer_choice
  #   turn.place_computer_piece(column)
  #   expect(turn.board.render).to be_an Array
  # end
  #
  # it 'can evaluate a horizontal win' do
  # end
  #
  # it 'can evaluate a vertical win' do
  # end
  #
  # it 'can evaluate a players win' do
  #   turn = Turn.new(player, computer, board)
  #   column = "A"
  #
  #   board.render
  #
  #   expect(game.end_game('player')).to eq nil
  # end
end
