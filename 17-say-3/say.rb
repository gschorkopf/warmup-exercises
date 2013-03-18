class Say
<<<<<<< HEAD
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

  # attr_reader :number
  # def initialize(number)
  #   @number = number
  # end

  # def in_english
  #   unless number.between?(0, 1_000_000_000_000-1)
  #     raise ArgumentError.new "can't do that"
  #   end

  #   return "0" if number == 0

  #   s = ""
  #   s << "#{billions} billion" if billions > 0
  #   s << " #{millions} million" if millions > 0
  #   s << " #{thousands} thousand" if thousands > 0
  #   s << " #{hundreds}" if hundreds > 0
  #   s.strip
  # end

  # def hundreds
  #   @hundreds ||= number % 1_000
  # end

  # def thousands
  #   @thousand ||= number % 1_000_000 / 1000
  # end

  # def millions
  #   @millions ||= number % 1_000_000_000 / 1_000_000
  # end

  # def billions
  #   @billions ||= number / 1_000_000_000
  # end
end
