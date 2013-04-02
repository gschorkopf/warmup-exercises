class Binary
  attr_reader :int_array, :exp_array

  def initialize(num)
    @int_array = split_and_int(num)
    @exp_array = []
  end

  def split_and_int(num)
    num.split("").map {|s| s.to_i}.reverse
  end

  def to_decimal
    int_array.each_with_index do |num, i|
      exp_array << (num * (2**i))
    end
    exp_array.inject(:+)
  end

end