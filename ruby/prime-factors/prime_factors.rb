require 'prime'

module PrimeFactors
  def self.for(number)
    result = []

    while(number > 1) do
      divisor = (2..number).find { |num| number % num == 0 }
      result << divisor
      number /= divisor
    end

    result
  end
end
