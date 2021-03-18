# 3 'disc' arrays
# 1, 2, 3
# disc class with one attribute, @size

#move
# should move the top disc of a stack to one of the other stacks
  # only one
# should not move a disc onto a smaller disc

#won?
# should last peg has all discs in correct order [1,2,3]

require 'game'

describe Game do 
  subject(:game) { Game.new }

  let(:stack1) { [3,2,1] }
  let(:stack2) { [] }
  let(:stack3) { [] }

  describe "#move" do 
    it "should remove from the end of the stack" do 
      game.move
      expect(stack1).to eq([3,2])
    end

    it "should move a disc to another stack" do 
      game.move
      expect(stack2).to eq([1]).or expect(stack3).to eq([1])
    end

    it "should not place a larger disc on a smaller disc" do 
      stack1 = [3]
      stack2 = [1]
      stack3 = [2]
      game.move
      
      expect(stack2).not_to eq([1,3])
      expect(stack3).not_to eq([2,3])
    end
  end

  describe "#won?" do 

  end




  
end
  
  # allow(double).to receive(:method).and_return(some_value)
  
  # let(:customer) { double("customer", :email_address => "ned@appacademy.io") }

