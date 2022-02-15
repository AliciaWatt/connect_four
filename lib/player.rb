class Player
  attr_accessor :name
  attr_reader   :mark

  def initialize(name:, piece:)
    @name = name
    @piece = piece
  end
end
