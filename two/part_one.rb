class PartOne

    def self.load_file( path ) 
        file = CSV.read( path ).flatten
    end 

    def self.evaluate( input )
        string, letter, eval_string = input.split( " " )
        range = rangify( string )
    end 

    def rangify( string )
        min_range, max_range = string.split( "" ).values_at( 0,-1 ).map( &:to_i )
        range = ( min_range..max_range )
        return range
    end 
end 