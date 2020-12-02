require_relative 'one' 
RSpec.describe One, "#compare" do 
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
            expect( x ).to eq( [ 1721, 299 ] )
        end
    end
end