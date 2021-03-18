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


  describe "#initialize" do
    describe "should initialize three stack instance variables as array" do 

      it "should initialize stack1 to have items 3, 2, 1" do
        expect(game.stack1).to eq([3, 2, 1])
      end

      it "should initialize stack2 and stack3 to be empty arrays" do
        expect(game.stack2).to eq([])
        expect(game.stack3).to eq([])
      end
    end
  end

  describe "#move" do 
    it "should remove from the end of the stack" do 
      game.move
      expect(game.stack1).to eq([3,2])
    end

    it "should move a disc to another stack" do 
      game.move
      expect(game.stack2).to eq([1]).or expect(game.stack3).to eq([1])
    end

    it "should not place a larger disc on a smaller disc" do 
      stack1 = [3]
      stack2 = [1]
      stack3 = [2]
      game.move
      
      expect(game.stack2).not_to eq([1,3])
      expect(game.stack3).not_to eq([2,3])
    end
  end

  describe "#won?" do 
    it "should return true if all the discs are in stack three and in order" do
      expect(game.stack3)
    end
  end




  
end
  
  # allow(double).to receive(:method).and_return(some_value)
  
  # let(:customer) { double("customer", :email_address => "ned@appacademy.io") }

