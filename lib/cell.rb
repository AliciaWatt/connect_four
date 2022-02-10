class Cell
  attr_reader :coordinate, :type_of_player

  def initialize(coordinate = "")
    @coordinate = coordinate
    @type_of_player = type_of_player
  end

  def render
    if @type_of_player == 'computer'
      'O'
    elsif @type_of_player == 'player'
      'X'
    else
      '.'
    end
  end
end
