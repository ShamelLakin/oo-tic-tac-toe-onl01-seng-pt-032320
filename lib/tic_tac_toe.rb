class TicTacToe 
  
  WIN_COMBINATIONS = [[0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]]
  
  # def initialize(board = nil)
  #   @board = board || Array.new(9, " ")
  # end 
  
   def initialize
    @board = Array.new(9, " ")
  end 
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  # game = TicTacToe.new 
  # game.display_board note: game is the reciever which always on the left of dot.
  
  def input_to_index(user_input)
    user_input.to_i - 1 
  end
  
  def move(index, token)
    @board[index] = token
  end
  
  def position_taken?(index_v)
    ((@board[index_v] == "X") || (@board[index_v] == "O"))
  end
  
  def valid_move?(position)
    position.between?(0,8) && !position_taken?(position)
  end 
  
  def turn_count
    @board.count {|token| token == "X" || token == "O"}
  end
  
  def current_player
    if turn_count % 2 == 0 
      "X"
    else 
      "O"
    end 
  end 
  
  def turn
  end 
end 