class Series
  def initialize(param)
    @num = param.to_s
  end

  def slices(number_of_slices)
    next_dig = digits.dup
    next_dig.shift
    array = []
    digits.each_with_index do |num, i|
      array << [num, next_dig[i]]
    end
    array.pop
    array
      # "982734a63"
      # digits = [ 9, 8, 2, 7, 3, 4, 6, 3 ]

      # first_group = digits.each_slice(2).to_a
      
      # second_group_digits = digits.dup
      # second_group_digits.shift
      # second_group_digits
      # second_group.each_slice(2).to_a

      # first_group.zip(second_group)
      # digits.each_with_index do |number,index|
      #   number
      #   digits[index + 1]

      #   # 9, 0
      #   # 8, 1

      # end

      # [[9, 8], [8, 2], [2, 7], [7, 3], [3, 4], [4, 6], [6, 3]]
    
  end

  def digits
    @num.split("").map {|s| s.to_i }
  end

end