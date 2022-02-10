require 'rspec'
require 'pry'
require './lib/board'

# class Board
#   def board
#     @board = []
#     @board.generate
#     @board.display
#   end
# end

RSpec.describe Board do
  before(:each) do
    @board = Board.new
  end

  it 'exists' do
    expect(@board).to be_an_instance_of(Board)
  end

  it 'creates an empty array for the board' do
    @board.generate
    @board.display
    expect(@board.display).to output(
      ABCDEFG
      .......
      .......
      .......
      .......
      .......
      .......
    )
  end

end
