class Trinary
  def initialize(value)
    @value = value
  end

  def to_decimal
    return 0 if @value.match(/[^0-2]/)

    @value.chars
          .map { |char| char.to_i }
          .reverse
          .each_with_index
          .reduce(0) { |sum, (v, i)| sum += v * 3**i }
  end
end

module BookKeeping
  VERSION=1
end
