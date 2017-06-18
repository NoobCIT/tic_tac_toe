
def win(player)
  ltr = ["A", "B", "C"]
  num = ["1", "2", "3"]
  player == @player1 ? marker = "X" : marker = "O"
  #Checks for A1,A2,A3
  # =>        B1,B2,B3
  # =>        C1,C2,C3
  i = 0
  while i < ltr.length
    if @board[ltr[i] + num[0]] == marker && @board[ltr[i] + num[1]] == marker && @board[ltr[i] + num[2]] == marker
      puts "#{player.name} wins!"
      @gameover = true
    end
    i += 1
  end

  #Checks for A1,B1,C1
  # =>        A2,B2,C2
  # =>        A3,B3,C3
  i = 0
  while i < ltr.length
    if @board[ltr[0] + num[i]] == marker && @board[ltr[1] + num[i]] == marker && @board[ltr[2] + num[i]] == marker
      puts "#{player.name} wins!"
      @gameover = true
    end
    i +=1
  end

  #Checks for A1,B2,C3
  i = 0
  j = 0
  if @board[ltr[i] + num[j]] == marker && @board[ltr[i+1] + num[j+1]] == marker && @board[ltr[i+2] + num[j+2]] == marker
    puts "#{player.name} wins!"
    @gameover = true
  end

  #Checks for A3,B2,C1
  i = 0
  j = 0
  if @board[ltr[i] + num[j+2]] == marker && @board[ltr[i+1] + num[j+1]] == marker && @board[ltr[i+2] + num[j]] == marker
    puts "#{player.name} wins!"
    @gameover = true
  end
end

#Otherwise it's a DRAW
def draw
  if @board.has_value?(" ")
  else
    puts "Game is a draw!"
    exit
  end
end
