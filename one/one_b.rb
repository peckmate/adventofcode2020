require 'csv'

=begin
require 'csv' 
@file = CSV.read('set_of_numbers.csv' ).flatten.map &:to_i 
=end 

class OneB 
    YEAR = 2020
    def self.compare( array_of_integers )
        array_of_integers.each do |integer| 
            remainder = YEAR - integer 
            array_of_integers.combination(2).each do |x, y| 
                if x + y == remainder
                    return [x, y, integer ].sort
                end
            end
        end
    end
end