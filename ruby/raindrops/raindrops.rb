require "prime"

class Raindrops
  VERSION=1
  def self.convert(number)
    prime_factors = Prime.prime_division(number).flatten
    result = ""
    if prime_factors.include? 3
      result = result + "Pling"
    end

    if prime_factors.include? 5
      result = result + "Plang"
    end

    if prime_factors.include? 7
      result = result + "Plong"
    end

    if result == ""
      result = number.to_s
    end

    result
  end
end
