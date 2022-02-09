class Board
  attr_accessor :new_board
  attr_reader :columns,
              :rows

  def intialize
    @new_board = create_board
  end

end
