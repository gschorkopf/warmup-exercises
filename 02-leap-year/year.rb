class Year
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