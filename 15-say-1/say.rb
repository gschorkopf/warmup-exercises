class Say
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def verify
    num < 100 && num > 0
  end

  def in_english
    verify ? check_num : ArgumentError
  end

  def check_num
    num < 20 ? small_num : large_num
  end

  def small_num
    Say.ones[num.to_s]
  end

  def large_num
    first, second = num.to_s.split("")
    result = Say.tens[first] + Say.ones[second]
    `say #{result}`
  end

  def self.tens
    { '2' => "twenty",
      '3' => "thirty",
      '4' => "forty",
      '5' => "fifty",
      '6' => "sixty",
      '7' => "seventy",
      '8' => "eighty",
      '9' => "ninty" }
  end

  def self.ones
    { '0' => '',
      '1' => 'one',
      '2' => 'two',
      '3' => 'three',
      '4' => 'four',
      '5' => 'five',
      '6' => 'six',
      '7' => 'seven',
      '8' => 'eight',
      '9' => 'nine',
      '10' => 'ten',
      '11' => 'eleven',
      '12' => 'twelve',
      '13' => 'thirteen',
      '14' => 'fourteen',
      '15' => 'fifteen',
      '16' => 'sixteen',
      '17' => 'seventeen',
      '18' => 'eighteen',
      '19' => 'nineteen' }
  end

end
