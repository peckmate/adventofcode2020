require './part_two' 
RSpec.describe PartTwo do 
    let(:described_class) { PartTwo.new }
    context "#evaluate" do 
        it "tests the #evaluate method and passes" do 
            input = "1-3 a: abcde"
            expect( described_class.evaluate( input )).to eq( :passing ) 
        end

        it "tests and fails" do 
            input = "1-3 b: cdefg"
            expect( described_class.evaluate( input )).to eq( :failing ) 
        end

        it "tests and fails" do 
            input = "2-9 c: ccccccccc" 
            expect( described_class.evaluate( input )).to eq( :failing ) 
        end

    end 
end