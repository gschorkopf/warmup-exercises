class SpaceAge
  def users_age
    1036000000
  end

  def earth
    age(1)
  end

  def mercury
    age(0.2408467)
  end

  def saturn
    age(29.447498)
  end

  def age(planet_var)
    total_years = users_age / (planet_var * 31557600)
    puts total_years.to_i
  end
end

SpaceAge.new.earth
SpaceAge.new.mercury
SpaceAge.new.saturn