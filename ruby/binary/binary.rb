module Binary
  def self.to_decimal(binary)
    raise_arg_error_if_invalid_binary(binary)
    binary.reverse.chars.map.with_index { |bit, i| bit.to_i * 2**i }.reduce(:+)
  end

  def self.raise_arg_error_if_invalid_binary(binary)
    raise ArgumentError.new("Not valid binary") if binary.match(/[^01]/)
  end
  private_class_method :raise_arg_error_if_invalid_binary
end

module BookKeeping
  VERSION=3
end
