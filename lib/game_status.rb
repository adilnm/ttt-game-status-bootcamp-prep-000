# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constan
WIN_COMBINATIONS=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
def won(board)
  WIN_COMBINATIONS.each do |WIN_COMBINATION|
    if(board[WIN_COMBINATION[0]]==board[WIN_COMBINATION[1]]==board[WIN_COMBINATION[2]])
      return WIN_COMBINATION
    else 
      return false
    end
  end
end