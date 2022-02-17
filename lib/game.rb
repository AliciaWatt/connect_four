require './lib/board'
require './lib/game'
require './lib/player'
require './lib/computer'
require './lib/turn'

class Game
  # attr_reader  :board,
  #              :player,
  #              :computer,
  #              :player_places,
  #              :computer_places,
  #              :win_type,
  #              :winner
  #
  def initialize
    @board = Board.new
    #   @player = Player.new(@board.place_piece)
    #   @computer = Computer.new(@board.place_piece)
    #   @player_places = []
    #   @computer_places = []
    #   @win_type
    #   @winner = ''
  end

  def start
    print_welcome_message
    start_input
    print_board
    # take_turns
    # end_game
    # restart
  end

  def print_welcome_message
    system('clear')
    puts 'Welcome to CONNECT FOUR, Enter p to play. Enter q to quit'
  end

  def start_input
    if starting_input.downcase == 'q'
      quit
      # else
      #   starting_input.downcase == 'p'
      #   puts @board.render
      system('clear')
    end
  end

  def quit
    system('clear')
    puts "Quitters never win! Smell ya later."
    sleep(2)
    system('clear')
    exit
  end

  def starting_input
    option = gets.chomp
    system('clear')
    until option.match?(/[p,q]{1}/i) && option.length == 1
      puts "Welcome to CONNECT FOUR, Enter p to play. Enter q to quit"
      option = gets.chomp
      system('clear')
    end
    option
  end



  def take_turns
      puts @board.render
    while @board.empty? do
      turn = Turn.new(@player, @computer, @board)
      turn.full_board?
      turn.prompt_player
      if @board.invalid?(player_input)
        puts "Column" + " #{user_input}, is not a valid choice. Please try again."
        take_turns
      end
      turn.place_player_piece(column)
      player_column = player.column_choice
      @board.place_piece(user_input) << turn.player_places


      evaluate_competitor_turn(turn)

      computer_column = turn.find_computer_column(turn.computer_choice)
        turn.place_computer_piece(column)
    @board.place_piece(user_input)   << turn.computer_places


      evaluate_competitor_turn(turn, 'computer')

      @board.render
      puts "Column" + "#{user_input}" + ", great choice!"
      # until loop
    end
  end
  #
  def evaluate_competitor_turn(turn, type_of_player)
    if turn.evaluate_tie(turn)
      end_game('', true)
    end

    if turn.evaluate_vertical(type_of_player) ||
       turn.evaluate_horizontal(type_of_player) ||
       turn.evaluate_diagonal(type_of_player)
      assign_win_type(turn.win_type)
      assign_winner(type_of_player)
      end_game(type_of_player)
    end
  end
  #
  # def assign_win_type(win_style)
  #   @win_type = win_style
  # end
  #
  # def assign_winner(winner)
  #   @winner = winner
  # end
  #
  def end_game(type_of_player, tie = false)
    @board.render
    if tie == true
      puts "We Tied"
      puts "Play Again?"
      print '>[Yes/No]'
      option = gets.chomp.upcase
      restart?(option)
    elsif type_of_player == 'player'
      puts "You are the winner, with a #{win_style}!"
      puts "Wanna play again?"
      print '>[Yes/No]'
      option = gets.chomp.upcase
      restart?(option)
    else
      puts "Computer Wins, with a #{win_style}!"
      puts "Wanna play again?"
      print '>[Yes/No]'
      option = gets.chomp.upcase
      restart?(option)
    end
  end
  #
  # def restart
  #   start
  # end

  # def restart?(reply)
  #   if reply == 'Y'
  #   end
end

# require 'pry'; binding.pry
