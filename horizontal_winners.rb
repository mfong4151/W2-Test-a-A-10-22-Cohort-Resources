# Horizontal Winner Strategies

def horizontal_winner?(token)
    (0...@max_height).each do |i|
        counts = Hash.new(0)
        @stacks.each { |row| counts[row[i]] += 1 }
        if counts[token] == @stacks.length
            return true
        end
    end
    return false
end



def horizontal_winner?(token)
    score = Hash.new(0)
    @stacks.each do |stack| 
        stack.each_with_index { |ele,i| score[i] += 1 if ele == token }
    end
    return score.has_value?(@stacks.length)
end

Credits to @haeun 
def horizontal_winner?(token)
    (0...max_height).each do |i|
    count = 0
        @stacks.each do |stack|
            count += 1 if stack[i] == token
            return true if count == @stacks.length   
        end
    end
    return false
 end

def horizontal_winner?(token)
    0...@max_height).each do |i|
       if @stacks.all? { |stack| stack[i] == token }
          return true
       end
   end
   false
end

def horizontal_winner?(token)
    (0..max_height).each do |idx|
        return true if @stacks.all?{|row| row[idx] != nil && row[idx] == token}
    end
    false
end