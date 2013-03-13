class Chunks
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def verify
    num > 0 && num < 999_999_999_999
  end

  def split
    [].tap do |p|
      p[0] = num / 1_000_000_000
      p[1] = (num % 1_000_000_000) / 1_000_000
      p[2] = (num % 1_000_000) / 1000
      p[3] = num % 1000
    end
  end
end