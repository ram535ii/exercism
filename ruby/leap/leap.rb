module Year
  def self.leap?(year)
    is_divisible_by(year, 400) || is_divisible_by(year, 4) && !is_divisible_by(year, 100)
  end

  def self.is_divisible_by(dividend, divisor)
    dividend % divisor == 0
  end

  private_class_method :is_divisible_by
end

module BookKeeping
  VERSION = 2
end
