class SecretHandshake
  attr_reader :num

  def initialize(param)
    @num = param.split("").reverse
  end

  def commands
    arr = []
    num.each_with_index do |v, i|
      arr << COMMAND[i] if num[i] == "1"
    end
    arr
  end

  COMMAND = 
  {
    3 => 'wink',
    2 => 'double blink',
    1 => 'close your eyes',
    0 => 'jump'
  }

end