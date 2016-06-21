
class Player
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

class Random
  def random_generator
   rand(1..100)
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
  def start
    welcome
    name = grab_name
  end
end


game = Game.new
game.start
