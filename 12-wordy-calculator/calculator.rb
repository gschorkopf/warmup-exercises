class Calculator

  def ask(string)
    bits = string.split(" ")
    sum = bits.inject(0) {|sum, bit| sum + bit.to_i}
  end

end