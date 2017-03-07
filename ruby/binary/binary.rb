module Binary
  def self.to_decimal(binary)
    raise ArgumentError.new("Not valid binary") if binary.match(/[^0-1]/)
    binary.reverse.chars.map(&:to_i).map.with_index { |bit, i| bit * 2**i }.reduce(:+)
  end
end

module BookKeeping
  VERSION=3
end
