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
    before(:each) { game.move(0,1) }

    it "should remove from the end of the stack" do 
      expect(game.stack1).to eq([3,2])
    end

    it "should move a disc to another stack" do 
      expect(game.stack2).to eq([1])
    end

    it "should raise an error if the user tries to place a larger disc on a smaller disc" do 
      expect { game.move(0,1) }.to raise_error("Invalid move")
    end
  end

  describe "#won?" do 
    it "should return true if all the discs are in stack three and in order" do
      expect(game.stack3).to eq([3,2,1])
    end
    it "should return false if stack3 doesn't have all discs in order" do 
      expect(game.stack3).not_to eq([3,2,1])
    end
  end

end
  
  # allow(double).to receive(:method).and_return(some_value)
  
  # let(:customer) { double("customer", :email_address => "ned@appacademy.io") }

