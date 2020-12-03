require_relative '.part_one' 
RSpec.describe PartOne, "#evaluate" do 
    context "if you want context" do 
        let( :file ) { [
            "1-3 a: abcde",
            "1-3 b: cdefg",
            "2-9 c: ccccccccc"
        ] }
        it "specs" do 
            expect( file ).to include( something )
        end

        it "tests the #evaluate method" do 
            x = described_class.compare( file )
            expect( x ).to eq( [ 1721, 299 ] )
        end
    end
end

RSpec.describe PartOne, "#rangify" do 
    context "if you want context" do 
        let( :string ) { "1-3" }

        it "tests the #evaluate method" do 
            x = PartOne.new 
            x.rangify( string )
            expect( x ).to eq( (1..3) )
        end
    end
end