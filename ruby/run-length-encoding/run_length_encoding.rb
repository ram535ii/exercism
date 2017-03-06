module RunLengthEncoding
  def self.encode(input)
    input
      .scan(/((.)(\2*))/)
      .map do |full_str, char|
        if full_str.length == 1
          char
        else
          full_str.length.to_s + char
        end
      end
      .join
  end

  def self.decode(input)
    input
      .scan(/(\d*)(\D)/)
      .map do |count, char|
        char * (count.to_i > 0 ? count.to_i : 1)
      end
      .join
  end
end

module BookKeeping
  VERSION=2
end
