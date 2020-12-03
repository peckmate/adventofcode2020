require './part_one' 
RSpec.describe PartOne do 
    let(:described_class) { PartOne.new }
    context "#evaluate" do 
        let( :file ) { [
            "1-3 a: abcde",
            "1-3 b: cdefg",
            "2-9 c: ccccccccc"
        ] }
        it "specs" do 
            expect( file ).to include( "1-3 a: abcde" )
        end
        it "tests the #evaluate method" do 
        end
    end 

    context "#rangify" do 
        let( :string ) { "1-3" }

        it "tests the #evaluate method" do 
            expect( described_class.rangify( string ) ).to eq( (1..3) )
        end
    end 
    context "#policy_check" do 
        it "succeeds if the letter count in string is in acceptable range" do 
            expect( described_class.policy_check( (1..2), "a", "abcde" ) ).to eq( true )
        end
        it "fails if the letter count is not in acceptable range" do 
            expect( described_class.policy_check( (5..6), "t", "abcdeg") ).to eq( false )
        end

        it "fails" do 
            expect( described_class.policy_check( (1..3), "b", "cdefg" ) ).to eq( false )
        end

        it "succeeds" do 
            expect( described_class.policy_check( (2..9), "c", "cccccccc" ) ).to eq( true )
        end

        it "succeeds" do 
            expect( described_class.policy_check( (11..13), "x", "xxxxxxxxxxx" ) ).to eq( true )
        end
    end
end