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
    db.sort_by {|k,v| k}
  end

end