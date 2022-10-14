#Win diagonal by Dylan Gavin



def win_diagonal?(mark)
    diagonal = []
    back_diagonal = []
    (0...@board.length).each do |i|
        diagonal << @board[i][i]
        back_diagonal << @board[i][-i - 1]
    end
    return true if diagonal.all? { |ele| ele == mark} || back_diagonal.all? { |ele| ele == mark}
    false
end