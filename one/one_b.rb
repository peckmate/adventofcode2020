require 'csv'

=begin
require 'csv' 
@file = CSV.read('input.csv' ).flatten.map &:to_i 
=end 

class OneB
    YEAR = 2020

    def self.compare( input )
        set = input.each_cons( 2 ).map{ |x| p x }
        input.each do |number| 
            remainder = ( YEAR - number )
            set.each do |smaller_set| 
                if smaller_set.sum + number == 2020
                    return [ smaller_set, number ].flatten
                end
            end
        end
    end
end 


