require "./game_board.rb"
require "./game_mechanics.rb"
require "./game_win_condition.rb"

def play_game
  puts "What is your name player 1?"
  @player1 = Player.new(gets.chomp)
  puts ""
  puts "What is your name player 2?"
  if @mode == "1"
    @player2.name
  else
    @player2 = Player.new(gets.chomp)
  end
  puts ""
  puts "Here's the board, use the coordinates to mark the box."
  puts "Please input coordinates in letter then number format"
  puts ""
  newBoard
  showBoard
  puts ""
  puts "#{@player1.name} will be X"
  puts "#{@player2.name} will be O"
  puts ""
  @gameover = Gameover.new(false)
  until @gameover == true
    mechanics(@player1)
    win(@player1)
    if @gameover == true
      exit
    end
    draw

    if @mode == "1"
      bot_mechanics
    else
      mechanics(@player2)
    end
    win(@player2)
    if @gameover == true
      exit
    end
    draw
  end
end
