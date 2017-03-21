require 'prime'

module PrimeFactors
  def self.for(number)
    return [] if number == 1
    recursive_for(number)
  end

  def self.recursive_for(number, acc=[])
    return (acc << number) if Prime.prime?(number)

    divisor = (2..number).find { |num| number % num == 0 }
    return recursive_for(number/divisor, acc << divisor)
  end
  private_class_method :recursive_for
end
