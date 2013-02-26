require 'date'

class Birthday
  def initialize
    @marker = Date.today
  end

  def ask
    year
    month
    day
  end

  def year
    puts "What year were you born?"
    @year = gets.chomp.to_i
  end

  def month
    puts "What month were you born?"
    @month = gets.chomp.to_i
  end

  def day
    puts "What day were you born?"
    @day = gets.chomp.to_i
  end

  def spank
    ask
    diff = @marker.year - @year
    puts "Spank! " * diff
  end
end

Birthday.new.spank

# Two fixes:
# - fix integer input issue
# - use month and day