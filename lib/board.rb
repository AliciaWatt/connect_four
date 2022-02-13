require 'pry'

class Board
  attr_reader :cells

  def initialize
    @cells = Hash.new { |hash, key| hash[key] = Cell.new("") }
    generate_cells
  end

  def generate_cells
    ("A".."G").to_a.each do |letter|
      (1..6).to_a.each do |number|
        @cells["#{letter}#{number}"] = Cell.new("#{letter}#{number}")
      end
    end
  end

  def render
    grid = " A B C D E F G \n"
    (1..6).to_a.each do |number|
      # grid += letter
      ('A'..'G').to_a.each do |letter|
        grid += " #{@cells["#{number}#{letter}"].render}"
      end
      grid += "\n"
    end
    grid
  end
end
# binding.pry
