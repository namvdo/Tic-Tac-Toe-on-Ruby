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


