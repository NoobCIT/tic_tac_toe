
def mechanics(player)
  puts "#{player.name} make your move"
  question1 = false
  until question1 == true
    answer1 = gets.chomp
    if answer1 =~ /[A-Z][1-3]/
      if @board[answer1] == " "
        if player == @player1
          @board[answer1] = "X"
        else
          @board[answer1] = "O"
        end
        puts ""
        showBoard
        puts ""
        question1 = true
      else
        puts "Try again, that spot is already taken!"
      end
    else
      puts "Try again"
    end
  end
end

def bot_mechanics
  ltr = ["A", "B", "C"]
  num = ["1", "2", "3"]
  question2 = false
  until question2 == true
    answer = ltr[rand(ltr.length)] + num[rand(num.length)]
    if @board[answer] == " "
      @board[answer] = "O"
      puts ""
      showBoard
      puts ""
      question2 = true
    end
  end
end
