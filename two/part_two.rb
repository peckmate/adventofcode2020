class PartTwo 

    def run 
        set = load_file( 'policies.csv' )
    end

    def load_file( path ) 
        file = CSV.read( path ).flatten
    end 

    def evaluate( input )
        number_string, letter, eval_string = input.split( " " )
        letter = letter.split( "" ).first
        point_one, point_two = number_string.split("-").map &:to_i
        split_eval = eval_string.split("") 

        check_one = split_eval[ adjusted_point( point_one ) ] == letter
        check_two = split_eval[ adjusted_point( point_two ) ] == letter 

        if (check_one == true && check_two == true ) || ( check_one == false && check_two == false )
            return :failing
        elsif ( check_one == true && check_two == false ) || ( check_one = false && check_two == true )
            return :passing
        end
    end

    def adjusted_point( point ) 
        point - 1
    end
end