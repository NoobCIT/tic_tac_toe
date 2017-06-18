require "./game_play.rb"

def start
  puts ""
  puts "**************************************************"
  puts "*Welcome to a game of Tic-Tac-Toe!"
  puts "*The goal is to create a row of 3 X's or 3 O's"
  puts "*horizontally, diagonally, or vertically."
  puts "*First person to do so wins, note a draw happens"
  puts "*on many occasions!"
  puts "**************************************************"
  puts ""
  puts "Type 1 for single player mode or 2 for two player mode"
  setting = false
  @mode = gets.chomp
  puts ""
  until setting == true
    if @mode =~ /[1-2]/
      if @mode == "1"
        bot
      end
      setting = true
    else
      puts "Type 1 for single player mode or 2 for two player mode"
      @mode = gets.chomp
      puts ""
    end
  end
  play_game
end

def bot
  names = ["Bob", "Sarah", "Jimmy", "Sandy"]
  bot_name = names[rand(names.length)] + "TheBot"
  @player2 = Player.new(bot_name)
end

class Player
  attr_reader :name, :mode
  def initialize(name)
    @name = name
    @mode = mode
  end
end

class Gameover
  attr_accessor :gameover
  def initialize(gameover)
    @gameover = gameover
  end
end

start
