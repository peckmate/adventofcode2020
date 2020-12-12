# frozen_string_literal: true

require_relative 'passport'

## Part One of Day For of Advent of Code
class PartOne 

    def passports
        parsed_text.map { |x| Passport.new( x ) }
    end

    def initialize
        @input = File.read('input.txt')
    end

    def parsed_text
        @input.split("\n\n").map { |x| x.split("\n").join(' ') }.map { |a| a.split.map { |x| x.split(':') }.to_h }
    end
end



