class BookKeeping
  VERSION=3
end

class Squares
  def initialize(top_natural_number)
    @top_natural_number = top_natural_number
  end

  def square_of_sum
    (1..@top_natural_number).reduce(:+)**2
  end

  def sum_of_squares
    (1..@top_natural_number).inject { |sum, number| sum + number**2 }
  end

  def difference
    return 0 if @top_natural_number == 0
    square_of_sum - sum_of_squares
  end
end
