# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
def won?
  board = ["X", "X", "X,", " ", " ", " ", " ", " ", " "]
  top_row_win = [0,1,2]
  if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
    puts "X won in the top row"
  board = [" ", " ", " ", "X", "X", "X", " ", " ", " "]
  middle_row_win = [3,4,5]
  if board[middle_row_win[3]] == "X" && board[middle_row_win[4]] == "X" && board[middle_row_win[5]] == "X"
    puts "X won the middle row"
  board = [" ", " ", " ", " ", " ", " ", "X", "X", "X"]
  bottom_row_win = [6,7,8]
  if board[bottom_row_win[6]] == "X" && board[bottom_row_win[7]] == "X" && board[bottom_row_win[8]] == "X"
    puts "X won the bottom row"
