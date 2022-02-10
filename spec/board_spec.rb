require 'rspec'
require 'pry'
require './lib/cell'
require './lib/board'

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

  describe '#render' do
    it 'it returns a string' do
      expect(@board.render).to be_instance_of String
    end
    it 'returns a correct string' do
      expect(@board.render).to eq(" A B C D E F G \n . . . . . . .\n . . . . . . .\n . . . . . . .\n . . . . . . .\n . . . . . . .\n . . . . . . .\n")
    end
  end
end
# require "pry"; binding.pry
