class Player
  attr_accessor :name
  attr_reader   :piece

  def initialize(name:, piece:)
    @name = name
    @piece = piece
  end
end


def places_piece(letter)
  gets player_input.chomp.upcase
end

player chooses letter(A-G)
Letters(1-6) is grouped into arrays
A-G = sym: Hash keys in @cells
each loop from cell_available? if 6 is nil/occupied go to 5
Player/Computer Choice gets dropped into lowest value
--Computer chooses column at random
loops

columns
[
  A = ["A1", "A2", "A3", "A4", "A4", "A5", "A6"]
  B = ["B1", "B2", "B3", "B4", "B4", "B5", "B6"]
  C = ["C1", "C2", "C3", "C4", "C4", "C5", "C6"]
  D = ["D1", "D2", "D3", "D4", "D4", "D5", "D6"]
  E = ["E1", "E2", "E3", "E4", "E4", "E5", "E6"]
  F = ["F1", "F2", "F3", "F4", "F4", "F5", "F6"]
  G = ["G1", "G2", "G3", "G4", "G4", "G5", "G6"]
]


def cell_available?(letter)
    if @board.cells.map { |number| number[letter] }.any? { |cell| cell == '.' }
      allow piece
    else
      next cell_available(letter)
  end
end

def column_full(letter)
    if @board.cells { |letter| letter[number] }.all? { |cell| cell == 'X' || 'O'}
    puts "Invalid move. #{letter} is full. Please try again.\n"
  elsif
    place_piece
  else
    puts "Invlaid please choose a proper column"
  end
end


  def turn
    player choose columns
    if cell_available?
    place place_piece
  else
    column_full
  end
