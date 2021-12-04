# frozen_string_literal: true

## Part Two of Day For of Advent of Code
class PartTwo
  attr_accessor :passports

  def initialize( path )
    @input = File.read( path ).split( "\n\n" ).map { |x| x.split("\n").join(' ') }.map { |a| a.split.map { |x| x.split(':') }.to_h }
    @passports = @input.map{ |x| Passport.new( x ) }
  end

end


class Passport
  attr_accessor :verified


  def initialize(values)
    @verified = false
    validate(values)
  end

  def validate(values)
    return false unless values['byr'] && valid_byr?(values['byr'])
    puts "Validated BYR"
    return false unless values['iyr'] && valid_iyr?(values['iyr'])
    puts "Validated IYR"
    return false unless values['eyr'] && valid_eyr?(values['eyr'])
    puts "Validated EYR"
    return false unless values['hgt'] && valid_hgt?(values['hgt'])
    puts "Validated HGT"
    return false unless values['byr'] && valid_byr?(values['byr'])
    puts "Validated BYR"
    return false unless values['hcl'] && valid_hcl?(values['hcl'])
    puts "Validated HCL"
    return false unless values['ecl'] && valid_ecl?(values['ecl'])
    puts "Validated ECL"
    return false unless values['pid'] && valid_pid?(values['pid'])
    puts "Validated PID"

    @verified = true

    return true
  end

  def verified?
    @verified
  end

  def valid_byr?(byr)
    return false unless byr.length == 4
    return false unless byr.to_i >= 1920
    return false unless byr.to_i <= 2002

    return true
  end

  def valid_iyr?(iyr)
    return false unless iyr.length == 4
    return false unless iyr.to_i >= 2010
    return false unless iyr.to_i <= 2020

    return true
  end

  def valid_eyr?(eyr)
    return false unless eyr.length == 4
    return false unless eyr.to_i >= 2020
    return false unless eyr.to_i <= 2030

    return true
  end

  def valid_hgt?(hgt)
    if hgt.match?(/cm/)
      msmt = 'cm'
    elsif hgt.match?(/in/)
      msmt = 'in'
    else
      return false
    end


    hgt_num = hgt.gsub(msmt, '').to_i

    case msmt
    when 'cm'
      return false unless hgt_num >= 150 && hgt_num <= 193
    when 'in'
      return false unless hgt_num >= 59 && hgt_num <= 76
    end

    return true
  end

  def valid_hcl?(hcl)
    return false unless hcl.length == 7
    return false unless hcl.match?(/[a-z]|[0-9]/)

    return true
  end

  def valid_ecl?(ecl)
    return false unless %w( amb blu brn gry grn hzl oth ).include?(ecl)

    return true
  end

  def valid_pid?(pid)
    return false unless pid.length == 9

    return true
  end

  def valid_cid?(cid)
    return true
  end
end



