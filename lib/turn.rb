#ask for input
#get input
#convert input to index
#if index is valid
#  make the move for index
#  show the board
#else
#  ask for input again until you get a valid input
#end


board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

display_board(board)

def input_to_index(input)
  index = input.to_i - 1
end

def position_taken?(board, index)
    !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def move(board, index, token = "X")
    board[index] = token
end


#if index is valid
#  make the move for input
#else
#  ask for input again until you get a valid input
#end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  input_to_index(index)
  if  valid_move?(board, index)
      move(board, index, "X")
      display_board(board)
  else
    turn(board)
  end
end


  #
