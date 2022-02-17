class Player
  attr_reader :name, :piece

  def initialize(name = "Player", type)
    @name = name
    @type = type
    @piece = piece
  end


def places_piece(letter)
  gets player_input.chomp.upcase
end

def type
  if player = human_player
   :human
  elsif player = computer
   :computer
  end
end

def render
  if type == :computer
    'O'
  elsif type == :human
    'X'
  else
    '.'
  end
end

def piece
  if type == :computer
    letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G']
    letters.sample
  elsif type = :human
    gets.chomp.upcase.to_str
  end
end


end
