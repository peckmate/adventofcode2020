class One 
    YEAR = 2020

    def self.compare( input )
        input.each do |num| 
            remainder = YEAR - num
            if input.include?( remainder )
                return [ num, remainder ]
            else 
                next
            end
        end
        return @solutions
    end
end 


