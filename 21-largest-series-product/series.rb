class Series
  def initialize(string)
    @number = string
  end

  def digits
    @number.split("").map{|s| s.to_i}
  end

  def largest_product(given_slices)
    array_slices = slices(given_slices)
    compute_max_product(array_slices)
  end

  def slices(slices)
    array = []
    digits.each_with_index do |d, i|
      array << []
    end
  end

  def compute_max_product(array_slices)
    array_slices.collect do |array|
      array.inject(:*)
    end.max
  end
end