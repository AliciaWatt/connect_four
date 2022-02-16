require './lib/board'
require './lib/game'
require './lib/player'
require './lib/computer'
require './lib/turn'

class Game
  attr_reader  :board,
               :player,
               :computer,
               :player_places,
               :computer_places,
               :win_type,
               :winner

  def initialize
    @player = Player.new(@board.place_piece)
    @computer = Computer.new(@board.place_piece)
    @player_places = []
    @computer_places = []
    @win_type
    @winner = ''
  end

  def print_welcome_message
    system('clear')
    puts 'Welcome to CONNECT FOUR, Enter p to play. Enter q to quit'
  end

  def start
    take_turns
  end

  def take_turns
    while @board.empty? do
      turn = Turn.new(@player, @computer, @board)
      turn.full_board?
      turn.prompt_player
      if turn.invalid?(player_input)
        puts "Column" + " #{user_input}, is not a valid choice. Please try again."
        take_turns
      end
      player_column = player.column_choice
      turn.player_places << @board.place_piece(user_input)
      turn.place_player_piece(column)

      evaluate_competitor_turn(turn, 'player')

      computer_column = turn.find_computer_column(turn.computer_choice)
      turn.computer_places << @board.place_piece(user_input)
      turn.place_computer_piece(column)

      evaluate_competitor_turn(turn, 'computer')

      @board.render
      puts "Column" + "#{user_input}" + ", great choice!"
    end
  end

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

  def assign_win_type(win_style)
    @win_type = win_style
  end

  def assign_winner(winner)
    @winner = winner
  end

  def end_game(type_of_player, tie = false)
    @board.render
    if tie == true
      puts "We Tied"
      puts "Play Again?"
      print '>[Yes/No]'
      reply = gets.chomp.upcase
      restart?(reply)
    elsif type_of_player == 'player'
      puts "You are the winner, with a #{win_style}!"
      puts "Wanna play again?"
      print '>[Yes/No]'
      reply = gets.chomp.upcase
      restart?(reply)
    else
      puts "Computer Wins, with a #{win_style}!"
      puts "Wanna play again?"
      print '>[Yes/No]'
      reply = gets.chomp.upcase
      restart?(reply)
    end
  end

  def restart
    start
  end

  # def restart?(reply)
  #   if reply == 'Y'
  #   end

  # def start_input
  #   system('clear')
  # if  @player.starting_input.downcase == 'q'
  #   quit
  # else
  #   @player.col
  #   system('clear')
  # end

  def quit
    system('clear')
    puts "Quitters never win! Smell ya later."
    sleep(2)
    system('clear')
    exit
  end
end
