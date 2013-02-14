class Year
<<<<<<< HEAD
  def initialize(year)
    @year = year.to_i
  end

  def leap?
    if @year % 4 == 0
      unless @year % 100 == 0 && @year % 400 != 0
        puts "Yep."
      end
    else
      puts "Nope."
    end
  end

end


Year.new(1996).leap?
=======

  attr_reader :year
  def initialize(number)
    @year = number.to_i
  end

  def leap?
    by4 && (!by100 || by400)
  end

  private

  def by4
    (year % 4) == 0
  end

  def by100
    (year % 100) == 0
  end

  def by400
    (year % 400) == 0
  end

end

>>>>>>> e26666d93999fe0740153e7045df93ff344dc0d1
