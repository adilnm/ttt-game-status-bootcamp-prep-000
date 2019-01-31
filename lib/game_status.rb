# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constan
WIN_COMBINATIONS=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
def won?(board)
  WIN_COMBINATIONS.each { |win_comb|
    if(board[win_comb[0]]=="X" && board[win_comb[1]]=="X" && board[win_comb[2]]=="X")
      return win_comb
      elsif(board[win_comb[0]]=="O" && board[win_comb[1]]=="O" && board[win_comb[2]]=="O")
      return win_comb
    end
  } 
      return false
  
end

def full?(board)
  board.all? {|position|
  position=="X" || position=="O"
  }
end

def draw?(board)
  if(full?(board)&&!won?(board))
    return true
    return false
  end
end

def over?(board)
  if(won?(board)||draw?(board)||full?(board))
    return true
    return false
  end
  
end

def winner(board)
  if([board[won?(board)[0]],board[won?(board)[1]],board[won?(board)[2]]]==["X","X","X"])
    return "X"
    elsif(won?(board)==["O","O","O"])
    return "O"
  end
end
