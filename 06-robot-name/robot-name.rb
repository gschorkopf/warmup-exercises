class Robot
  attr_reader :name
  def initialize
    @name ||= RobotNamer.name_gen
  end

  def reset
    @name = nil
  end

end

module RobotNamer
  def self.name_gen
    (0...2).map{ ('A'..'Z').to_a[rand(26)] }.join+
    rand(100..999).to_s
  end
end



puts "Robot 3: "
robot3 = Robot.new
puts robot3.name
puts robot3.name
puts "Resetting to factory settings."
robot3.reset
puts robot3.name
puts robot3.name
