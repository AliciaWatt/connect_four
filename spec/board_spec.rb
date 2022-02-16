require 'rspec'
require 'pry'
require './lib/board'
require './lib/cell'

RSpec.describe Board do
  # before(:each) do
  #   @board = Board.new
  # end

  describe '#cells' do
    it 'returns keys = coordinates value as cell objects' do
      @board = Board.new
      expect(@board.cells).to be_instance_of Hash
      end
    end
  end

# binding.pry
  describe "grid" do
    it 'returns a correct string' do
      @board = Board.new
      @board.render
      expect { print('render') }.to output.to_stdout
    end


  describe '#cell_avalilable?' do
    it 'can check if a cell is cell_available' do
      @board = Board.new
      @board.cells['A1'] = 'X'
      expect(@board.cell_available?('A1')).to eq(false)
    end


    it 'creates columns for input' do
      @board = Board.new
      @board.grid
      @board.columns

      @board.cells['A1'] = 'X'
      @board.cells['A2'] = 'X'
      @board.cells['A3'] = 'X'
      @board.cells['A4'] = 'X'
      @board.cells['A5'] = 'X'
      @board.cells['A6'] = 'X'

      expect(@board.columns[0]).to eq(['X', 'X', 'X', 'X', 'X', 'X'])
    end

    it 'can check if a column is full' do
      @board = Board.new
      @board.grid
      @board.columns

      @board.cells['A1'] = 'X'
      @board.cells['A2'] = 'X'
      @board.cells['A3'] = 'X'
      @board.cells['A4'] = 'X'
      @board.cells['A5'] = 'X'
      @board.cells['A6'] = 'X'

      piece = "A"

      expect(@board.column_full?(0)).to eq(true)
    end

    xit 'can check for invalid inputs' do
      @board = Board.new
      @board.grid
      @board.columns

      @board.cells['A1'] = 'X'
      @board.cells['A2'] = 'X'
      @board.cells['A3'] = 'X'
      @board.cells['A4'] = 'X'
      @board.cells['A5'] = 'X'
      @board.cells['A6'] = 'X'

      expect(@board.invalid).to eq("Invalid input. Please choose a proper letter.")
      expect(@board.invliad).to eq("Column is full. Please choose an empty column.")
    end
  end
end

# require "pry"; binding.pry
