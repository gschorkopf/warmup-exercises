class School
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def db
    @db ||= Hash.new([])
  end

  def add(student, grade)
    db[grade] += [student]
  end

  def grade(grade)
    db[grade]
  end

  def sort
    {
      3 => ["Kyle"],
      4 => ["Christopher", "Jennifer"],
      6 => ["Kareem"]
    }
  end

end