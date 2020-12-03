class PartOne

    def run 
        set = load_file( 'policies.csv' )
        answer = set.select{ |s| evaluate( s ) }.count 
    end

    def load_file( path ) 
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


end 