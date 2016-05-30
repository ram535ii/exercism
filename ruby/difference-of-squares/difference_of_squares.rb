class BookKeeping
  VERSION=3
end

class Squares
  attr_reader :numbers

  def initialize(top_natural_number)
    @numbers = top_natural_number == 0 ? [0] : (1..top_natural_number)
  end

  def square_of_sum
    numbers.reduce(:+)**2
  end

  def sum_of_squares
    numbers.inject { |sum, number| sum + number**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
