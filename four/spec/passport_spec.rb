require './part_one' 
RSpec.describe PartOne::Passport do 
    let( :passport_fac ) { PartOne::Passport }
    let( :valid_passport_one ) { passport_fac.new( { ecl: "gry", pid: 860033327, eyr: 2020, hcl: "#fffffd", byr: 1937, iyr: 2017, cid: 147, hgt: "183cm" } ) }
    let( :invalid_passport_one ) { passport_fac.new( { iyr: 2013, ecl: "amb", cid: 350, eyr: 2023, pid: 28048884, hcl: "#cfa07d", byr: 1929 } ) }
    let( :valid_passport_two ) { passport_fac.new( { hcl: "#ae17e1", iyr: 2013, eyr: 2024, ecl: "brn", pid: 760753108, byr: 1931, hgt: "179cm" } ) }
    let( :invalid_passport_two ) { passport_fac.new( { hcl: "#cfa07d", eyr: 2025, pid: 166559648, iyr: 2011, ecl: "brn", hgt: "59in" } ) }

    ###5.times do
###irb(main):071:1*   x[Passport.members.sample] = nil
###irb(main):072:0> end


    context "does something idk" do 
        fit "can create a Passport" do 
            h = { ecl: 1}
            passport = passport_fac.new( { ecl: 'one' } )
            expect( passport.class ).to be( PartOne::Passport )
        end
        it "can add values to a new passport" do 
            passport = passport_fac.new
            passport[:eyr] = 2020 
            expect( passport[:eyr] ).to eq( 2020 )
        end

        fit "can create a new passport with multiple values" do 
            expect( valid_passport_one[:ecl] ).to eq( 'gry')
        end

        #it "can tell if a passport is valid" do 
        #    passport = passport_fac.new( valid_passport_one )
        #    expect( passport.empty_keys ).to eq( 0 )  
        #end
    end
end