require 'pry'
require_relative 'cell'

class Board
  attr_accessor :generate_cells
  attr_reader :cells, :generate_cells, :piece

  def initialize
    @cells = Hash.new
    generate_cells
  end

  def generate_cells
    (1..6).to_a.each do |number|
      ('A'..'G').to_a.each do |letter|
        @cells["#{letter}#{number}"] = ('.')
      end
    end
    @cells
  end

  def grid
    values = []
    values << @cells.values.each_slice(7).to_a
    values[0]
  end

  def columns
    grid.transpose
  end


  def place_piece(piece)
    @board.cells.keys.reverse.group_by { |letter| letter[0] }
    "Please select a valid column"
    if user_input = get.chomp.to_str.upcase

  end
end


  def render
    letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G'].join
    puts letters
    grid.map do |row|
      row.map do |cell|
        print cell
      end
      puts ""
    end
    return
  end

  def cell_available?(letter)
    if @cells[letter] == "."
      return true
    else
      return false
    end
  end

  def column_full?(letter)
    if columns.values_at(letter) == ('.')
      return false
    else
      return true
    end
  end


  # def invalid
  #   if user_input != letters
  #     puts "Invalid input. Please choose a proper letter."
  #   else user_input = letters && column_full?
  #     puts "Column is full. Please choose an empty column."
  #   end
  # end


  def test
    columns.map do |row|
      row.each_cons(6) do |cell|
        print cell.join
      end
      puts ""
    end
    return
  end


  def diagonals
    @du1 = [] ; @du2 = []; @du3 = []; @du4 = []; @du5 = []; @du6 = []
    @dd1 = [] ; @dd2 = []; @dd3 = []; @dd4 = []; @dd5 = []; @dd6 = []

    @du1 = [['A1'], ['B2'], ['C3'], ['D4'], ['E5'], ['F6']]
    @du2 = [['B1'], ['C2'], ['D3'], ['E4'], ['F5'], ['G6']]
    @du3 = [['C1'], ['D2'], ['E3'], ['F4'], ['G5']]
    @du4 = [['D1'], ['E2'], ['F3'], ['G4']]
    @du5 = [['A2'], ['B3'], ['C4'], ['D5'], ['E6']]
    @du6 = [['A3'], ['B4'], ['D5'], ['E6']]
    @dd1 = [['G1'], ['F2'], ['E3'], ['D4'], ['C5'], ['B6']]
    @dd2 = [['F1'], ['E2'], ['D3'], ['C4'], ['B5'], ['A6']]
    @dd3 = [['E1'], ['D2'], ['C3'], ['B4'], ['A5']]
    @dd4 = [['D1'], ['C2'], ['B3'], ['A4']]
    @dd5 = [['G2'], ['F3'], ['E4'], ['D5'], ['C6']]
    @dd6 = [['G3'], ['F4'], ['E5'], ['D6']]

    diagonal_up = [@du1, @du2, @du3, @du4, @du5, @du6]
    diagonal_down = [@dd1, @dd2, @dd3, @dd4, @dd5, @dd6]
  end
# binding.pry

end
board = Board.new
board.cells["A1"] = "X"
board.cells["A2"] = "X"
board.cells["A3"] = "X"
board.cells["A4"] = "X"
# binding.pry
