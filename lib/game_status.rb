# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
def won?
  board = ["X", "X", "X,", " ", " ", " ", " ", " ", " "]
  top_row_win = [0,1,2]
  if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
  "X won in the top row"

  board = [" ", " ", " ", "X", "X", "X", " ", " ", " "]
  middle_row_win = [3,4,5]
  if board[middle_row_win[0]] == "X" && board[middle_row_win[1]] == "X" && board[middle_row_win[2]] == "X"
    "X won the middle row"
end
