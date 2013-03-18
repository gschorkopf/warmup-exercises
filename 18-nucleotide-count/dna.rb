class DNA
  attr_reader :strand

  def initialize(string)
    @strand = string.upcase.split("")
  end

  def nucleotide_counts
    strand.inject(default_count) {|hash, nucl| hash[nucl] += 1; hash}
  end

  def count(nucleotide_letter)
    nucleotide_counts[nucleotide_letter]
  end

  def default_count
    { "A" => 0,
      "T" => 0,
      "G" => 0,
      "C" => 0
    }
  end

end