require './part_two' 
RSpec.describe PartTwo do 
    let(:described_class) { PartTwo.new } 

    # "11-18 m: mmmmmmmmmmqmmmmmmf", 
    # "4-5 g: fsggvmg", 
    # "6-13 l: vklgsrjrkjpzlqll", 
    # "5-6 t: bttttvt", 
    #  "1-2 f: sfffffffffffffffff",
    #"10-19 v: vvvvvvvvvvvvvvvvvvxv"

    context "#evaluate" do 

        it "" do 
            input = "1-2 f: sfffffffffffffffff"
            expect( described_class.evaluate( input )).to eq( :pass ) 
        end

        it "passes" do 
            input = "1-3 a: abcde"
            expect( described_class.evaluate( input )).to eq( :pass ) 
        end

        it "fails" do 
            input = "1-3 b: cdefg"
            expect( described_class.evaluate( input )).to eq( :fail ) 
        end

        it "fails" do 
            input = "2-9 c: ccccccccc" 
            expect( described_class.evaluate( input )).to eq( :fail ) 
        end

        it "fails" do 
            input = "11-18 m: mmmmmmmmmmqmmmmmmf"
            expect( described_class.evaluate( input )).to eq( :fail ) 
        end

        it "passes" do 
            input = "4-5 g: fsggvmg"
            expect( described_class.evaluate( input )).to eq( :pass ) 
        end

    end 
end