require 'time'

class Gigasecond
  attr_reader :quantity

  IN_SECONDS = 1_000_000_000

  def initialize(quantity)
    @quantity = quantity
  end

  def to_i
    quantity * IN_SECONDS
  end

  def after(start)
    Time.at(start.to_i + self.to_i)
  end
end

birthday=Time.parse('30/08/1988')
g = Gigasecond.new(1)
puts g.after(birthday)
