class Hamming
  VERSION = 2

  def self.compute(strand_one, strand_two)
    raise ArgumentError if strand_one.length != strand_two.length

    strand_one.chars.each_with_index.count do |value, index|
      value != strand_two[index]
    end
  end
end
