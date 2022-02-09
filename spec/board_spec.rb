require 'rspec'
require 'pry'
require './lib/board'

class Board
  def board
    @new_board = create_board
  end
end

RSpec.describe Board do
  before(:each) do
    @board = Board.new
  end

  it 'exists'do
    expect(@board).to be_an_instance_of(Board)
  end
end
