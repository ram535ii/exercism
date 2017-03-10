class Series
  def initialize(whole_string)
    @whole_string = whole_string
    @whole_string_length = @whole_string.size
  end

  def slices(n)
    raise ArgumentError.new("n can't be greater than the string length") unless @whole_string_length >= n
    bottom_limit = 0
    substrings = []

    while bottom_limit + n <= @whole_string_length do
      substrings << @whole_string.slice(bottom_limit, n)
      bottom_limit += 1
    end

    substrings
  end
end
