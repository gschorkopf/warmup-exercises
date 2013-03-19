class DNA
  attr_accessor :original, :original_size

  def initialize strand
    @original = strand.split("")
    @original_size = original.size
  end

  def hamming_distance strand
    nucleotides = strand.split("")
    new_size = nucleotides.size
    compare_lengths nucleotides, new_size
  end

  def compare_lengths nucleotides, new_size
    if original_size > new_size
      new_original = original[0,new_size-1]
      split_and_compare nucleotides, new_original
    elsif new_size > original_size
      new_nucleotides = nucleotides[0,original_size-1]
      split_and_compare new_nucleotides, original
    else
      split_and_compare nucleotides, original
    end
  end

  def split_and_compare first, second
    counter = 0
    first.each_with_index do |letter, i|
      counter += 1 if letter != second[i]
    end
    counter
  end

end