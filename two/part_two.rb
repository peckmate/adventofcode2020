require 'csv'
class PartTwo 

    def run 
        set = load_file( 'policies.csv' )
        arry = []
        set.each do |x| 
            y = evaluate x 
            if y == :pass 
                arry << y
            end
        end
        return arry.count
    end

    def load_file( path ) 
        file = CSV.read( path ).flatten
    end 

    def evaluate( input )
        number_string, letter, eval_string = input.split( " " )

        letter = letter.split( "" ).first

        point_one, point_two = number_string.split("-").map( &:to_i )
        split_eval = eval_string.split("") 
        working = {} 

        split_eval.each_with_index do |letter, idx| 
            val = idx + 1 
            working[val] = letter 
        end

        either_number_matches = ( working[point_one] == letter ) || ( working[point_two] == letter )
        both_numbers_match = ( working[point_one] == letter ) && ( working[point_two ] == letter )
        neither_number_matches = ( working[point_one] != letter ) && ( working[point_two] != letter ) 

        if neither_number_matches
            return :fail
        elsif either_number_matches
            if both_numbers_match
                return :fail 
            else
                return :pass
            end
        end

    end
end