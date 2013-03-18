class Say
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def in_english
    verify? ? speak(split_num) : (raise ArgumentError)
  end

  def verify?
    0 <= num && num <= 999_999_999_999
  end

  def speak(array)
    result = ""
    result = array.each_with_index do |numb, i|
      unless array[i] == 0
        result = result + "#{Say.words[numb[i]]} #{numb[i]}"
    end
    result
  end

  def split_num
    [].tap do |part|
      part[0] = num / 1_000_000_000
      part[1] = (num % 1_000_000_000) / 1_000_000
      part[2] = (num % 1_000_000) / 1000
      part[3] = num % 1000
    end
  end

  def self.words
    { 0 => 'zero',
      1 => 'thousand',
      2 => 'million',
      3 => 'billion'
    }
  end

end