class Game
  attr_reader :stack1, :stack2, :stack3

  def initialize
    @stack1 = [3,2,1]  
    @stack2 = []  
    @stack3 = []  
    @hash = {0 => @stack1, 1 => @stack2, 2 => @stack3}
    
  end

  def move(from_stack, to_stack)
    if !hash[to_stack].empty?
      if hash[from_stack].last > hash[to_stack].last  
        raise "Invalid move"
      end
      hash[to_stack] << hash[from_stack].pop 
    end
  end

  private
  attr_reader :hash
end