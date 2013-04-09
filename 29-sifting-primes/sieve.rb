class Sieve
  def initialize(param)
    @max_value = param
    @omitted_nums = []
    @prime_nums = []
  end

  def primes
    for num in num_range
      next if @omitted_nums.include?(num)

      mult = num
      while mult <= num_range.last do
        @omitted_nums << mult
        mult = mult + num
      end
      
      @prime_nums << num
    end

    @prime_nums
  end

  def num_range
    (2..@max_value).to_a
  end
end
