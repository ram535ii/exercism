require 'prime'

module PrimeFactors
  def self.for(number)
    remainder = number
    result = []

    while(remainder > 1) do
      divisor = (2..remainder).find { |num| remainder % num == 0 }
      result << divisor
      remainder /= divisor
    end

    result
  end
end
