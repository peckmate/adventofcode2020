require './part_one' 
RSpec.describe PartOne do 
    let( :described_class ) { PartOne.new( path ) }
    let( :path ) { 'test.txt' }
    let( :raw_sample ) { File.read( path ) }
    let( :split ) { test_string.split(" " ) }
    let( :valid_string ) { ecl:'gry', pid:860033327, eyr:2020, hcl:'#fffffd', byr:1937, iyr:2017, cid:'147', hgt:'183cm'}
    let( :passport_generator ) { PartOne::Passport }

    context "#initialize instance methods" do 
        context "#raw_file" do 
            it "returns text on the #raw_file method" do 
                expect( described_class.raw_file ).to_not be( nil ) 
            end
        end 

        context "#load_file" do 
            it "loads a file" do 
                expect( described_class.load_file( path ).class ).to eq( String )
            end
        end

        context "#split_raw_string_on_newline" do 
            it "splits mass of text into new lines" do 
                test = "abc\ndec"
                expect( described_class.parse_spaces_out( test ) ).to eq( "abcdec" )
            end
        end

        context "#parse_spaces_out" do 
            it "convert spaces" do 
                expect( 
                    described_class.parse_spaces_out( "hcl:#cfa07d eyr:2025 pid:166559648 iyr:2011 ecl:brn hgt:59in\n") 
                ).to eq( 
                    "hcl:#cfa07d eyr:2025 pid:166559648 iyr:2011 ecl:brn hgt:59in" 
                )
            end
        end
    end
end