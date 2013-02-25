class Bob
<<<<<<< HEAD
  def run
    input = ''
    loop do
      printf ">"
      input = gets.chomp
      response = input.split(//)
        case
          when response[0..4].join.downcase == "bro, "
            then leet(response[5..-1].join.downcase)
          when response[-1] == '?'
            then puts 'Sure.'
          when response.join == ''
            then puts "Fine. Be that way!"
          when response.join == response.join.upcase
            then puts 'Woah, chill out!'
          when response.join == "q"
            then exit
          else
            puts 'Whatever.'
        end
    end
  end

  def leet(input)
    output = input.gsub(/[aeio]/, 'a' => '4', 'e' => '3', 'i' => '1', 'o' => '0')
    puts output
  end
end

Bob.new.run
=======
  def chat(input)
    puts response_for(input)
  end

  def response_for(input)
    if shouting?(input)
      'Woah, chill out!'
    elsif question?(input)
      'Sure.'
    elsif statement?(input)
      'Whatever.'
    else
      'Fine, be that way.'
    end
  end

  def statement?(input)
    input.length > 0
  end

  def question?(input)
    input.end_with?("?")
  end

  def shouting?(input)
    !input.empty? && input == input.upcase
  end
end

puts "Hey bro, wassup?"
bob = Bob.new
while true
  input = gets.chomp.strip
  bob.chat(input)
end
>>>>>>> 7f90f1f2156bc6c56cb22ffba06880fe796a28ed
