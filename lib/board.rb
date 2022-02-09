require 'pry'

class Board
  attr_accessor :board

  def intialize
    @board = []
  end

  def generate
    @board = [
    {iA:'A', iB:'B', iC:'C', iD:'D', iE:'E', iF:'F', iG:'G'},
    {A1:".", B1:".", C1:".", D1:".", E1:".", F1:".", G1:"."},
    {A2:".", B2:".", C2:".", D2:".", E2:".", F2:".", G2:"."},
    {A3:".", B3:".", C3:".", D3:".", E3:".", F3:".", G3:"."},
    {A4:".", B4:".", C4:".", D4:".", E4:".", F4:".", G4:"."},
    {A5:".", B5:".", C5:".", D5:".", E5:".", F5:".", G5:"."},
    {A6:".", B6:".", C6:".", D6:".", E6:".", F6:".", G6:"."}
  ]
  end


  def display
    @board.each do |row|
      puts row.values.join
    end
  end

end

@board = Board.new
#binding.pry
