require 'pry'
require './lib/board'

class Turn
  attr_accessor :board
  attr_reader :player,
              :computer,
              # :board,
              :player_places,
              :computer_places,
              :win_type,
              :winner

  def initialize(player, computer, board)
    @player = player
    @computer = computer
    @board = board
    @player_places = []
    @computer_places = []
    @win_type = ''
    @winner = ''
  end

  def full_board?
    empty?
  end

  def place_piece
    if player == :human
      piece = inputs.keys
      inputs[piece].first = cell
      @board.cells[cell] = player.render
      inputs[piece].drop(1)
      board.render
    elsif player == :computer
      piece = inputs.keys
      inputs[piece].first = cell
      @board.cells[cell] = player.render
      inputs[piece].drop(1)
      board.render
    end
  end

  # def type
  #   if @board.grid == rows
  #     :horizontal
  #   elsif @board.grid == columns
  #     :certical
  #   elseif @board.grid == diagonal_up
  #     :diagonal_up
  #   elseif == diagonal_down
  #     :diagonal_down
  #   end
  # end
end
