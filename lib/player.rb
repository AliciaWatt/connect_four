class Player
  attr_accessor :type
  attr_reader :name, :piece, :type

  def initialize(name, type)
    @name = name
    @type = type
    @piece = piece
  end

def piece
  if type == :computer
    'O'
  elsif type == :human
    'X'
  end
end

def input
  if type == :computer
    letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G']
    letters.sample
  elsif type == :human
    gets.chomp.upcase.to_str
  end
end


end
