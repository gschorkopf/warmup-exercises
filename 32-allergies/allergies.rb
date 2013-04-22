class Allergies
  def initialize(param)
    @allergy = param
  end

  def list
    @allergies = []
    NUMBERS.each do |num|
      @allergies << ALLERGENS[num] if (@allergy & num > 0) 
    end
    @allergies
  end

  def allergic_to?(query)
    @allergies ? list : @allergies
    @allergies.any? {|allergen| allergen == query}
  end

  NUMBERS = [1, 2, 4, 8,
            16, 32, 64, 128]

  ALLERGENS = {
    1 => 'eggs',
    2 => 'peanuts',
    4 => 'shellfish',
    8 => 'strawberries',
    16 => 'tomatoes',
    32 => 'chocolate',
    64 => 'pollen',
    128 => 'cats'
  }
end