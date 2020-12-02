require_relative 'one_b' 
RSpec.describe OneB, "#compare" do 
    context "if you want context" do 
        let( :input ) { [
            1721,
            979,
            366,
            299,
            675,
            1456
        ] }
        it "specs" do 
            expect( input ).to include( 366 )
        end

        it "tests the #compare method" do 
            x = described_class.compare( input )
            expect( x.sort ).to eq( [ 979, 366, 675 ].sort )
        end
    end
end