def display_board(board) 
  puts " #{board[0]} | #{board[1]} | #{board[2]} " 
  puts "___________" 
  puts " #{board[3]} | #{board[4]} | #{board[5]} " 
  puts "___________" 
  puts " #{board[6]} | #{board[7]} | #{board[8]} " 
end 

def valid_move?(board,index) 
  if index >= 9 || index <= -1 || board[index] == "X" || board[index] == "O" 
    return false 
  else return true 
  end
end

def input_to_index(user_input)
  new_user_input = user_input.to_i
  new_user_input -= 1
  return new_user_input
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn(board) 
  puts "Please enter 1-9:"
  number = gets.chomp 
  index = input_to_index(number) 
  if valid_move? == true 
    move(board,index) 
    display_board(board) 
  else turn(board) 
  end
end