require 'pry'

class Board
<<<<<<< HEAD
  attr_accessor :board
  attr_reader :cols, :height

  def initialize(cols = 7, height = 6)
    @cols, @height = cols, height
    @board = create_board
  end

  def create_board
    board = []
    @cols.times do
      board << Array.new(@height)
    end
    board
  end
  # def generate
  #   @board = [
  #   {iA:'A', iB:'B', iC:'C', iD:'D', iE:'E', iF:'F', iG:'G'},
  #   {A1:".", B1:".", C1:".", D1:".", E1:".", F1:".", G1:"."},
  #   {A2:".", B2:".", C2:".", D2:".", E2:".", F2:".", G2:"."},
  #   {A3:".", B3:".", C3:".", D3:".", E3:".", F3:".", G3:"."},
  #   {A4:".", B4:".", C4:".", D4:".", E4:".", F4:".", G4:"."},
  #   {A5:".", B5:".", C5:".", D5:".", E5:".", F5:".", G5:"."},
  #   {A6:".", B6:".", C6:".", D6:".", E6:".", F6:".", G6:"."}
  # ]
  # end

  def display
    @board.map {|row| row.values.join}
      puts @board.map
=======
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
>>>>>>> 994fd5889b9c6464402e46ce48358328bbb883ef
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
<<<<<<< HEAD

 @board = Board.new
 binding.pry
=======
>>>>>>> 994fd5889b9c6464402e46ce48358328bbb883ef
