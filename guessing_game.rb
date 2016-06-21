
class Player
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def pick_a_number
    player_guess = gets.chomp.to_i
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
  def win_logic
    if player_guess == SECRET_NUMBER
      puts "You won! That's correct!"
      exit
    elsif player_guess < SECRET_NUMBER
      puts "Your guess is too Low."
    elsif player_guess > SECRET_NUMBER
      puts "Your guess is too High."
    end
  end
  def start
    welcome
    name = grab_name
    pick_a_number
  end
end

SECRET_NUMBER = rand(1..100)
game = Game.new
game.start
