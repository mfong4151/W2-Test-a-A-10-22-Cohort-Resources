
#win_diagonal by Diego Noveas 


def win_diagonal?(mark)
    diagonal1 = []
    diagonal2 = []
    (0...@board.length).each do |i|
        diagonal1 << @board[i][i]
        diagonal2 << @board[i][@board.length - i - 1]
    end
    if diagonal1.count(mark) == 3 || diagonal2.count(mark) == 3
        return true 
    else
        false
    end
end