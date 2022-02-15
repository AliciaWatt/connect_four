class Cell
  attr_accessor :type_of_player
  attr_reader :coordinate

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

  def occupied?
    !@type_of_player.nil?
  end

  def place_piece(type_of_player)
    @type_of_player = type_of_player
  end
end
