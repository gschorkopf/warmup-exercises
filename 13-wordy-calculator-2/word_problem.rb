class WordProblem
  def initialize(string)
    @bits = string.split(" ")
  end

  def numbers
    [@bits[2].to_i, @bits[4].to_i+@bits[5].to_i]
  end

  def operator
    @bits[3]
  end

  def add(numbers)
    numbers[0] + numbers[1]
  end

  def subtract(numbers)
    numbers[0] - numbers[1]
  end

  def multiply(numbers)
    numbers[0] * numbers[1]
  end

  def divide(numbers)
    numbers[0] / numbers[1]
  end

  def answer
    if operator == 'plus'
      add(numbers)
    elsif operator == 'minus'
      subtract(numbers)
    elsif operator == 'multiplied'
      multiply(numbers)
    elsif operator == 'divided'
      divide(numbers)
    else
      "I don't understand"
    end     
  end


end