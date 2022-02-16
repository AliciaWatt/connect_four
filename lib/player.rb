class Player
  attr_reader :name, :piece

  def initialize(name = "Player")
    @name = name
    @piece = "X"
  end
end

def places_piece(letter)
  gets player_input.chomp.upcase
end
