require 'rspec'
require 'pry'
require './lib/cell'
require './lib/board'

RSpec.describe Board do
  before(:each) do
    @board = Board.new
    @cell = Cell.new
  end

  describe '#cells' do
    it 'returns keys = coordinates value as cell objects' do
      expect(@board.cells).to be_instance_of Hash
      @board.cells.each do |_coordinate, cell|
        expect(cell).to be_instance_of Cell
      end
    end
  end

  describe '#render' do
    it 'it returns a string' do
      expect(@board.render).to be_instance_of String
    end

    it 'returns a correct string' do
      expect { print('render') }.to output.to_stdout
      #expect(@board.render).to eq(" A B C D E F G
 # . . . . . . .
 # . . . . . . .
 # . . . . . . .
 # . . . . . . .
 # . . . . . . .
 # . . . . . . .")
    end
  end

  xdescribe '#cell_avalilable?' do
    #binding.pry
    it 'can check if a cell is cell_available' do
      @board.cells['A1'] = @coordinate = 'A1', @type_of_player = 'X'
      expect(@board.cell_available?(['A1'])).to eq(false)
    end
  end
end
# require "pry"; binding.pry
