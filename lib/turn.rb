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

  # def prompt_player
  #   puts
  #   puts "Which column would you like to select?"
  #   option = gets.chomp.upcase
  #   if

  # def starting_input
  #   option = gets.chomp
  #   system('clear')
  #   until option.match?(/[p,q]{1}/i) && option.length == 1
  #     puts "Welcome to CONNECT FOUR, Enter p to play. Enter q to quit"
  #     option = gets.chomp
  #     system('clear')
  #   end
  #   option
  # end

end
