
def newBoard
  @board = Hash.new

  @board = {
    "A1" => " ", "B1" => " ", "C1" => " ",
    "A2" => " ", "B2" => " ", "C2" => " ",
    "A3" => " ", "B3" => " ", "C3" => " "
  }
end

def showBoard
  puts "   | A | B | C |"
  puts " ---------------"
  puts " 1 | #{@board["A1"]} | #{@board["B1"]} | #{@board["C1"]} |"
  puts " ---------------"
  puts " 2 | #{@board["A2"]} | #{@board["B2"]} | #{@board["C2"]} |"
  puts " ---------------"
  puts " 3 | #{@board["A3"]} | #{@board["B3"]} | #{@board["C3"]} |"
  puts " ---------------"
end
