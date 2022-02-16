require 'pry'
require_relative 'cell'

class Board
  attr_accessor :generate_cells
  attr_reader :cells, :generate_cells

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

  def place_piece(user_input)
    @board.cells.keys.reverse.group_by { |letter| letter[0] }
    "Please select a valid column"
    if user_input = get.chomp.to_str.upcase
      # fill in respective array
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

  # def column_full?
  #   checks for full colum through place piece?
  # end

  def invalid?
    if user_input != ('A'..'G')
      puts "Invalid input. Please choose a proper letter."
    else user_input = ('A'..'G') && column_full?
         puts "Column is full. Please choose an empty column."

    end
  end
  # def column
  #
  # end

  #  def letter_columns(letter)
  #    columns = [
  #    A = ["A1", "A2", "A3", "A4", "A4", "A5", "A6"],
  #    B = ["B1", "B2", "B3", "B4", "B4", "B5", "B6"],
  #    C = ["C1", "C2", "C3", "C4", "C4", "C5", "C6"],
  #    D = ["D1", "D2", "D3", "D4", "D4", "D5", "D6"],
  #    E = ["E1", "E2", "E3", "E4", "E4", "E5", "E6"],
  #    F = ["F1", "F2", "F3", "F4", "F4", "F5", "F6"],
  #    G = ["G1", "G2", "G3", "G4", "G4", "G5", "G6"]
  #  ]
  # end
end
board = Board.new
board.cells["A1"] = "X"
board.cells["A2"] = "X"
board.cells["A3"] = "X"
board.cells["A4"] = "X"
# binding.pry
