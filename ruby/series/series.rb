class Series
  def initialize(whole_string)
    @whole_string = whole_string
    @whole_string_length = @whole_string.size
  end

  def slices(n)
    raise ArgumentError.new("n can't be greater than the string length") unless @whole_string_length >= n

    max_substring_start_index = @whole_string_length - n
    (0..max_substring_start_index).to_a.map do |start_index|
      @whole_string.slice(start_index, n)
    end
  end
end
