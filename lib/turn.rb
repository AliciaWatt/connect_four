class Turn
  attr_reader :player,
              :computer,
              :board,
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

  # def prompt_player
  #   puts
  #   puts "Which column would you like to select?"
  #   option = gets.chomp.upcase
  #   if


end
