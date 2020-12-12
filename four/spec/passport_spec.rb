require './passport' 
RSpec.describe Passport do 
    let( :passport_fac ) { Passport }
    let( :described_class ) { Passport }
    let( :valid_passport_one ) { passport_fac.new( { ecl: "gry", pid: 860033327, eyr: 2020, hcl: "#fffffd", byr: 1937, iyr: 2017, cid: 147, hgt: "183cm" } ) }
    let( :invalid_passport_one ) { passport_fac.new( { iyr: 2013, ecl: "amb", cid: 350, eyr: 2023, pid: 28048884, hcl: "#cfa07d", byr: 1929 } ) }
    let( :valid_passport_two ) { passport_fac.new( { hcl: "#ae17e1", iyr: 2013, eyr: 2024, ecl: "brn", pid: 760753108, byr: 1931, hgt: "179cm" } ) }
    let( :invalid_passport_two ) { passport_fac.new( { hcl: "#cfa07d", eyr: 2025, pid: 166559648, iyr: 2011, ecl: "brn", hgt: "59in" } ) }

    
    it "can create a Passport" do 
        passport = valid_passport_one
        expect( passport.class ).to be( described_class )
    end

    it "detects valid ones" do 
        expect( valid_passport_one.valid? ).to eq( true ) 
        expect( valid_passport_two.valid? ).to eq( true ) 
    end

    it "detects invalid ones" do 
        expect( invalid_passport_one.valid? ).to eq( false )
        expect( invalid_passport_two.valid? ).to eq( false ) 
    end

    it "can test batches" do 
        set = [ valid_passport_one, invalid_passport_two, valid_passport_two, invalid_passport_one ]
        expect( set.select{ |y| y.valid? }.count ).to eq( 2 )
    end 
end