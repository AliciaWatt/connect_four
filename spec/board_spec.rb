require 'rspec'
require 'pry'
require './lib/cell'
require './lib/board'

<<<<<<< HEAD
# class Board
#   def board
#     @board = []
#     @board.generate
#     @board.display
#   end
# end

=======
>>>>>>> 994fd5889b9c6464402e46ce48358328bbb883ef
RSpec.describe Board do
  before(:each) do
    @board = Board.new
  end

  describe '#cells' do
    it 'returns keys = coordinates value as cell objects' do
      expect(@board.cells).to be_instance_of Hash
      @board.cells.each do |coordinate, cell|
        expect(cell).to be_instance_of Cell
      end
    end
  end

<<<<<<< HEAD
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
=======
  describe '#render' do
    it 'it returns a string' do
      expect(@board.render).to be_instance_of String
    end
    it 'returns a correct string' do
      expect(@board.render).to eq(" A B C D E F G \n . . . . . . .\n . . . . . . .\n . . . . . . .\n . . . . . . .\n . . . . . . .\n . . . . . . .\n")
    end
>>>>>>> 994fd5889b9c6464402e46ce48358328bbb883ef
  end
end
# require "pry"; binding.pry
