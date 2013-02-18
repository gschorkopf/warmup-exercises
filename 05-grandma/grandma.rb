class Grandma
  def convo
    command = ""
    while command != "BYE"
      printf "> "
      command = gets.chomp
      puts response_from(command)
    end
  end

  def response_from(command)
    if command == "BYE"
      "OHBAI."
    elsif command == command.upcase
      "NO, NOT SINCE #{year}"
    else
      "HUH?!  SPEAK UP, SONNY!"
    end
  end

  def year
    rand(1930..1950)
  end
end

Grandma.new.convo