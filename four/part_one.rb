# frozen_string_literal: true

## Part One of Day For of Advent of Code
class PartOne 
    attr_accessor :raw_file, :working_file, :passports

    #OPTIONAL = { :cid } .freeze 
    
    Passport = Struct.new( :eyr, :byr, :hcl, :ecl, :hgt, :iyr, :pid, :cid ) do 
    
        def initialize( hash ) 
            x = *hash.values_at( *Passport.members )

            passport = Passport.new( *hash.values_at( *Passport.members ) )
        end
    end

    def initialize( input )  
        @working_file = []
        @passports = []
        #@raw_file = load_file( 'input.txt' )
        

    end

    def load_file( filepath ) 
        File.read( filepath )
    end

    def split_raw_file_to_pretty_lines
        raw_file.split("\n" * 2 ).map{ |x| x.gsub(/\n/, " ") }
    end

    def valid_passports
        passports.select(&:valid?)
    end

    def run 
        # take raw file and parse it into 'passports' 
        array_of_strings = split_raw_file_to_pretty_lines

        # prettify & parse 
        array_of_strings.each do |string| 
            passport = Passport.new 
            @passports << string.split('').each do |pair|
                k, v = pair.split(':')
                passport[k.to_sym] = v
            end
        end
    end
end
