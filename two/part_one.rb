class PartOne

    def self.load_file( path ) 
        file = CSV.read( path ).flatten
    end 

    def self.evaluate( input )
        string, letter, eval_string = input.split( " " )
        
        range = rangify( string )
        letter = letter.split( "" ).first
        policy_check( range, letter, eval_string )
    end 

    def policy_check( range, letter, eval_string ) 
        array = eval_string.split( "" )
        count = array.select{ |s| s == letter }.count 
        return range.cover?( count )
    end

    def rangify( string )
        min_range, max_range = string.split( "-" ).map( &:to_i )
        return ( min_range..max_range )
    end 

    def run 
        file = load_file('policies.csv')
    end

end 