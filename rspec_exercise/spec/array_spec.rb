require "array"

describe Array do

    subject(:arr) {[1, 1, 2, 2, 3, 4, 4, 4, 5]}

    describe "#my_uniq" do
       it "should remove duplicate elements"  do

        expect(arr.my_uniq.length).to eq(5)
       end

       it "should return the same order" do 
        expect(arr.my_uniq).to eq([1,2,3,4,5])
       end
    end
end