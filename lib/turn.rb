# Actually it's not complete yet, but I'll keep updating.
# Display board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Converting users' input to index into an array
def input_to_index(input)
    index  = input.to_i 
    index -= 1
    return index
end

# When users have passed the input, check whether it's valid or not
def valid_move?(board, index)
  def position_taken?(array, ind)
    if array[ind] == "" || array[ind] == " " || array[ind] == nil
      return false
    else
      return true
    end
  end
  def on_board?(number)
      if number.between?(0,8) == true
        return true
      else
        return false
      end
  end
  if position_taken?(board, index) == false && on_board?(index) == true
    return true
  else
    return false
end


# Moving
def move(board, index, character = "X")
    character = board[index]
    return board
end

# Turning
def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
  
# Playing
def play(board)
  i = 0
  while i < 9
    i += 1
    turn(board)
  end
end

# Checking whether X or O is currently playing
def turn_count(board)
  counter = 0 
  for i in board
    if i == "X" || i == "O"
      counter += 1
    end
  end
  return counter
end

def current_player(board)
  current = turn(board)
  if current % 2 == 0
    return "X"
  else
    return "Y"
  end
end

# Define WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

# Win combo
# Let me explain something on these lines of code. Constant WIN_COMBINATIONS with each method, 
# for example variable index_0 = win_combo[0]
# It will select the first element in the array such as [0,1,2] it will return 0. 
# But there are also we have the other arrays,
# the same thing will happen like that with all other arrays, "each" method plays the role that iterate all of the array,
# so the result of index_0 = win_combo[0] will be:
# 0
# 3 
# 6
# 0
# 1
# 2
# 0 
# 2
# Yeah, now you can guess that index_1 and index_2 have the same structures like this.
def won?(board)
    WIN_COMBINATIONS.each {|win_combo|
    index_0 = win_combo[0]
    index_1 = win_combo[1]
    index_2 = win_combo[2]
    position_1 = board[index_0]
    position_2 = board[index_1]
    position_3 = board[index_2]
  if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo
    end
  }
else
  return false
end

# Full when every position is occupied 
def full?(board)
    board.all? do |board_full|
      board_full == "X" || board_full == "O"
    end
end

# Draw when board is full and cannot define the win combo 
def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end

# Over happens when X or O won, or every position is occupied, or draw, or X or Y won but not all the positions are occupied
def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return nil
  end
end

# Check who is the winner, X or O
def winner(board)
  checkwinner = []
  checkwinner = won?(board)
  if won?(board) == false
    return nil
  else
    if board[checkwinner[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end
