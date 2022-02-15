require 'pry'

class Board
  attr_accessor :generate_cells
  attr_reader :cells, :generate_cells

  def initialize
    @cells = Hash.new
    generate_cells
  end

  def generate_cells
    ('A'..'G').to_a.each do |letter|
      (1).to_a.each do |number|
        @cells["#{letter}#{number}"] = ('.')
      end
    end
    @cells
  end

  def render_board
    grid = []
    grid << @cells.values.each_slice(6).to_a
    grid
  end

  # def render
  #   grid = " A B C D E F G \n"
  #   (1..6).to_a.each do |number|
  #     # grid += letter
  #     ('A'..'G').to_a.each do |letter|
  #       grid += " #{@cells["#{number}#{letter}"].render}"
  #     end
  #     grid += "\n"
  #   end
  #   grid
  # end

#   def cell_available?(letter)
#     @board.cells.map { |number| number[letter] }.any? { |cell| cell == '.' }
#   end
# binding.pry
#   def column_full(letter)
#     @board.cells { |letter| letter[number] }.all? { |cell| cell == 'X' || 'O'}
#     puts "Invalid move. #{letter} is full. Please try again.\n"
#   end
end
