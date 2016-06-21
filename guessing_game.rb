
class Player
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def pick_a_number
    print "<Choose a number:>"
    gets.chomp.to_i
  end
end


class Game
  def welcome
  puts  "Welcome to my guessing game! Do you have what it takes to guess right?! Would you like to play (y)es or (n)o"
  gets.chomp
  end
  def grab_name
    print "<What's your name>: "
    gets.chomp
  end
  def loss_logic(player_guess, player)
    if player_guess == 5
      puts "Gameover"
      exit
    end
  end
  def win_logic(player_guess, player)
    loop do
      if player_guess == SECRET_NUMBER
        puts "You won! That's correct!"
        exit
      elsif player_guess < SECRET_NUMBER
        puts "Your guess is too Low."
        player_guess = player.pick_a_number
      elsif player_guess > SECRET_NUMBER
        puts "Your guess is too High."
        player_guess = player.pick_a_number
      end
      def loss_logic(player_guess, player)
        if player_guess == 5
          puts "Gameover"
          exit
        end
      end
    end
  end

  def start
    welcome
    name = grab_name
    player = Player.new(name)
    pick_a_number = player.pick_a_number
    win_logic(pick_a_number, player)
    loss_logic(pick_a_number, player)

  end
end

SECRET_NUMBER = rand(1..100)
game = Game.new
game.start
