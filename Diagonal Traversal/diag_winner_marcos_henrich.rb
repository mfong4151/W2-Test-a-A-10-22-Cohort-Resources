#diag weiner by Marcos Henrich


def diagwinner?(token, arr, max)
    i = 0
    while i < arr.length
        j = 0
        leftdown = []
        while leftdown < max
            checkarr << arr[i][j]
            i += 1
            j += 1
        end
        p checkarr
    end
    return true if leftdown.all? { |ele| ele == token } && checkarr.length == max

    def diagwinner?(token, arr, max)

    i = arr.length - 1
    while i >= 0
        j = 0
        leftup = []
        while j < max
            leftup << arr[i][j]
            i -= 1
            j += 1
        end
        p checkarr
    end
    return true if leftup.all? { |ele| ele == token } && checkarr.length == max
    false