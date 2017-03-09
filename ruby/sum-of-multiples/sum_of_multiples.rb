class SumOfMultiples
  def initialize(*numbers_to_multiply)
    @numbers_to_multiply = numbers_to_multiply
  end

  def to(non_inclusive_upper_limit)
    sum = 0
    (1..non_inclusive_upper_limit-1).each do |multiple|
      sum += multiple if @numbers_to_multiply.any? { |number_to_multiply| multiple % number_to_multiply == 0 }
    end

    sum
  end
end
