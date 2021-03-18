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

    describe "#two_sum" do 
        let(:arr) { [-1,0,2,-2,1] }
        
        context "if the two elements sum is zero" do 
            it "should add the indices of the two elements in a new array" do 
                arr2 = [-1, 0, 1]
                expect(arr2.two_sum.first).to contain_exactly(0,2)
            end
            
            it "should sort each subarrays in ascending order" do 
                expect(arr.two_sum.sort).to eq([[0,4],[2,3]])
            end
            
            it "should sort full array in dictionary order" do 
                expect(arr.two_sum).to eq([[0,4],[2,3]])
            end 
        end
    end

    describe "#my_transpose" do
        
    end



end