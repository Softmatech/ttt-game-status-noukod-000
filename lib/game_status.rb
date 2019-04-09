# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[2,4,6]]
  
  def won?(board)
   WIN_COMBINATIONS.each do |win_combination|
    
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination
else
    return false
  end
  end
end
end

def full?(board)
 all_X_O = board.all? do |elem|
  elem == "X" || elem == "O"
end
end

def draw?(board)
  if won?(board)
  return false
  else if full?(board) && !won?(board) 
  return true
else if !won?(board) && !full?(board)
  return false
end
end
end
end


x_diagonal_won = [
  "X", "O", "X", 
  "O", "X", "O", 
  "O", "O", "X"]