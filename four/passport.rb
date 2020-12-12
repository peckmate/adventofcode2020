# frozen_string_literal: true

class Passport
    attr_accessor :attributes, :guide

    def guide
        @guide = %w(eyr byr hcl ecl hgt iyr pid)
    end

    def initialize( hash ) 
        @attributes = hash
    end

    def valid?
        attributes.values_at( *guide ).none?( &:nil? )
    end
end