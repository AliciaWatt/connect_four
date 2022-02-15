class Cell
  attr_reader :coordinate, :type_of_player

  def initialize(coordinate = '')
    @coordinate = coordinate
    @type_of_player = type_of_player
  end

  def render
    case @type_of_player
    when 'computer'
      'O'
    when 'player'
      'X'
    else
      '.'
    end
  end
end
