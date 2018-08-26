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
    @board[index] = token
  end

  def position_taken?(index)
    if @board[index]
      true
    end
  end

  def valid_move?(index)
    if (index >= 0) && (index <= 8) && !position_taken?(index)
      true
    end
  end

  def turn
    puts "What up, wass your movings?"

    input = gets.to_i

    index = input_to_index(input)

    if valid_move?(index)
      move(index, token)
      @board
    else
      turn
    end
  end

  def turn_count
    count = 0
    for x in @board do
      if x == "O" || x == "X"
        count += 1
      end
    end
  end

  def current_player
    if turn_count % 2 == 0
      "X"
    else
      "O"
    end
  end

end
