class SumOfMultiples
  def initialize(*numbers_to_multiply)
    @numbers_to_multiply = numbers_to_multiply
  end

  def to(non_inclusive_upper_limit)
    @numbers_to_multiply.map do |num|
      acc = 0
      results = []
      # could do this with a recursive func
      until acc >= non_inclusive_upper_limit
        results << acc
        acc += num
      end
      results
    end.flatten.uniq.reduce(:+)
  end
end
