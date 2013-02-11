class Beer

  def self.song(number)
    counter = number
    while number > 0
      puts "#{number} bottles of beer on the wall, #{number} bottles of beer.
      Take one down and pass it around, #{number-1} bottles of beer on the wall.\n"
      number = number - 1
    end
    if counter == 0
      puts "No more bottles of beer, y'all."
    end
  end 

end

Beer.song(99)