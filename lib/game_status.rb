# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom Row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #left to right diagonal
  [2,4,6] #right to left diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    win_index_4 = win_combination[3]
    win_index_5 = win_combination[4]
    win_index_6 = win_combination[5]
    win_index_7 = win_combination[6]
    win_index_8 = win_combination[7]
    win_index_9 = win_combination[8]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]
  position_4 = board[win_index_4]
  position_5 = board[win_index_5]
  position_6 = board[win_index_6]
  position_7 = board[win_index_7]
  position_8 = board[win_index_8]
  position_9 = board[win_index_9]

    if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
      return win_combination
    end
  end
  return false
end

def full?(board)
  if board.any? {|index| index == nil || index == " "}
    return false
  else
    return true
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  else !won(board)
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return ture
  end
end

def winner(board)
  if won?(board)
    return board[won?(board) [0]]
  end
end
