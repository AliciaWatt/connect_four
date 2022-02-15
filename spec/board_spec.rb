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
  end

    xit 'creates columns for input' do
      @board = Board.new
      @board.grid
      @board.columns
      @board.columns.each_index(@a) { |cell| cell = "X" }
      # expect(@board.letter_columns(@a)).to eq(true)
    end

    xit 'can check for invalid inputs' do
    @board = Board.new
    expect(column_full).to eq("Invalid input. Please choose a proper letter.")
    expect(column_full).to eq("Column is full. Please choose an empty column.")
    end

end

# require "pry"; binding.pry
