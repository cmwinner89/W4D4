class Game
  attr_reader :stack1, :stack2, :stack3

  def initialize
    @stack1 = [3,2,1]  
    @stack2 = []  
    @stack3 = []  
  end

  def move(from_stack, to_stack)
    to_stack << from_stack.pop 

  end


end