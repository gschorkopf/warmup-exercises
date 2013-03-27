class Say
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def in_english
    verify? ? which_num : (raise ArgumentError)
  end

  def verify?
    0 <= num && num <= 999_999_999_999
  end

  def digits
    num.to_s.split("").map {|s| s.to_i}
  end

  def count_num
    digits.count
  end

  def which_num
    say_num = ""
    if count_num == 3
      say_num + "#{smalls[digits[0]]} hundred"
    end
  end

  def smalls
    { 0 => "zero",
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen"
    }
  end

  def bigs
    { 

    }
  end


end