require_relative 'board'

class Game
  def start
    print_welcome_message
    # start_input
    prints_board
  end

  def print_welcome_message
    system('clear')
    puts 'Welcome to CONNECT FOUR, Enter p to play. Enter q to quit'
    sleep(3)
    system('clear')
    exit
  end
end

#   def start_input
#   quit if @player.starting_input.downcase == 'q'
#   system('clear')
# end
#
# def quit
#   system('clear')
#   puts "Quitters never win! Smell ya later."
#   sleep(1)
#   system('clear')
#   exit
# end
