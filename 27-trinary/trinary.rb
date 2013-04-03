class Trinary
  attr_reader :trinary, :decimal_vals

  def initialize(num)
    @trinary = split_and_reverse(num)
    @decimal_vals = []
  end

  def split_and_reverse(num)
    num.split("").map {|s| s.to_i }.reverse
  end

  def to_decimal
    trinary.each_with_index do |num, i|
      decimal_vals << (num*(3**i))
    end
    decimal_vals.inject(:+)
  end
end