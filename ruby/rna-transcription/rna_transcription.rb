class Complement
  VERSION=3

  COMPLEMENT_TABLE = {
    G: "C",
    C: "G",
    T: "A",
    A: "U"
  }
  def self.of_dna(dna_nucleotides)
    rna_nucleotides = dna_nucleotides.chars.map do |dna_nucleotide|
      raise ArgumentError unless COMPLEMENT_TABLE.keys.include? dna_nucleotide.to_sym
      COMPLEMENT_TABLE[dna_nucleotide.to_sym]
    end
    rna_nucleotides.join
  end
end
