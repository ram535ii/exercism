class Complement
  VERSION=3

  def self.of_dna(dna_nucleotides)
    raise ArgumentError unless /\A[ACGT]*\z/ =~ dna_nucleotides
    dna_nucleotides.tr("GCTA", "CGAU")
  end
end
