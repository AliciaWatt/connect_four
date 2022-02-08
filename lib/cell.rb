class Cell
  attr_reader :type_of_player, :coordinates

  def initialize(type_of_player = nil, coordinates = "")
    @type_of_player = type_of_player
    @coordinates = coordinates
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
