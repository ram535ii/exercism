require 'prime'

module PrimeFactors
  def self.for(number)
    return [] if number == 1
    recursive_for(number)
  end

  def self.recursive_for(number, acc=[])
    return (acc << number) if Prime.prime?(number)

    Prime.take_while { |p| p < number }.each do |p|
      if number % p == 0
        return recursive_for(number/p, acc << p)
      end
    end
    recursive_for(number, acc)
  end
  private_class_method :recursive_for
end
