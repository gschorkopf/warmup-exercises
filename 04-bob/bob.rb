class Bob
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