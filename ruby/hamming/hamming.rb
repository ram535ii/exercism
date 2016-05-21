class Hamming
  VERSION = 2

  def self.compute(strand_one, strand_two)
    hamming_distance = 0
    strand_one_length = strand_one.length
    strand_two_length = strand_two.length
    raise ArgumentError if strand_one_length != strand_two_length

    index = 0
    while index < strand_one_length do
      hamming_distance+=1 unless strand_one[index] == strand_two[index]
      index+=1
    end

    hamming_distance
  end
end
