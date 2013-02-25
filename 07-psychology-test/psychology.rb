require 'highline/import'


def questions
  [
  ["What's the name of that Steven King book?", 0],
  ["How old are you 5 years from now?", 0],
  ["What have you become?", 1]
  ]
end

def ask_question(text, validation = /.*/)
  ask text do |q|
    q.validate = validation
  end
end

def run
  ###
end