require 'pry'

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
    letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G'].join
    values << @cells.values.each_slice(7).to_a
    grid = values[0]
    puts letters
    grid.map do |row|
      row.map do |cell|
        print cell
      end
      puts ""
    end
  end

  # grid.map do |row|
  #   row.map do |cell|
  #     print cell
  #   puts ""
  # end

  #
  #
  #
  # end
  # grid[0][0] << ("\n)")
  # grid[0][0].join
  # grid[0][1] << ("\n)")
  # grid[0][1] << grid[0][1].join
  # grid[0][2] << ("\n)")
  # grid[0][2] << grid[0][2].join
  # grid[0][3] << ("\n)")
  # grid[0][3] << grid[0][3].join
  # grid[0][4] << ("\n)")
  # grid[0][4] << grid[0][4].join
  # grid[0][5] << ("\n)")
  # grid[0][5] << grid[0][5].join
  # grid[0][6] << ("\n)")
  # grid[0][6] << grid[0][6].join
  binding.pry
  # grid
  # puts grid
end

binding.pry
