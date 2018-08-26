class TicTacToe
  def initialize(board=Array.new(9, " "))
    @board = board
  end

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

  def input_to_index(val)
    val-1
  end

  def move(index, token="X")
    index = input_to_index(index)
    if (index >= 0) && (index <= 10)
      @board[index] = token
    else
      move(index, token)
    end
  end

  def position_taken?(index)
    if @board[index]
      true
    end
  end

  def valid_move?(index)
    if (index >= 0) && (index <= 8) && !position_taken?(index)

    else

    end

  end
end
