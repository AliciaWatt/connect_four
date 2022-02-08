class Cell
  attr_reader :type_of_player, :coordinates

  def initialize(type_of_player=nil, coordinates="")
    @type_of_player = type_of_player
    @coordinates = coordinates
  end
end
