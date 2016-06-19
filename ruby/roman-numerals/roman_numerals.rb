require "pry"
class Fixnum
  VALUES = {
    0 => {
      1 => "I",
      5 => "V",
      10 => "X"
    },
    1 => {
      1 => "X",
      5 => "L",
      10 => "C"
    },
    2 => {
      1 => "C",
      5 => "D",
      10 => "M"
    },
    3 => {
      1 => "M"
    }
  }
  def to_roman
    result = ""

    digits.reverse.each_with_index do |val, index|
      next if val == 0
      numerals = VALUES[index]
      if val == 1
        roman_digit = numerals[1]
      elsif val == 2
        roman_digit = numerals[1] + numerals[1]
      elsif val == 3
        roman_digit = numerals[1] + numerals[1] + numerals[1]
      elsif val == 4
        roman_digit = numerals[1] + numerals[5]
      elsif val == 5
        roman_digit = numerals[5]
      elsif val == 6
        roman_digit = numerals[5] + numerals[1]
      elsif val == 7
        roman_digit = numerals[5] + numerals[1] + numerals[1]
      elsif val == 8
        roman_digit = numerals[5] + numerals[1] + numerals[1] + numerals[1]
      elsif val == 9
        roman_digit = numerals[1] + numerals[10]
      elsif val == 10
        roman_digit = numerals[10]
      end
      result = "#{roman_digit}#{result}"
    end

    result
  end

  def digits(base: 10)
    quotient, remainder = divmod(base)
    quotient == 0 ? [remainder] : [*quotient.digits(base: base), remainder]
  end
end


module BookKeeping
  VERSION=2
end
