require 'highline/import'
 
class Question
  attr_reader :text, :important, :validation, :answer
 
  def initialize(input)
    @text = input[:text]
    @important = input[:important]
    @validation = input[:validation] ||= /.*/
  end
 
  def important?
    important
  end
 
  def ask
    @answer = Kernel.ask text do |q|
      q.validate = validation
    end
 
    return self
  end
end
 
class Questioner
  def questions_source
    [
      ["What's your favorite color?", false],
      ["How old are you?", false],
      ["Do you think Frank looks funny?", true, /(obviously|yes|absolutely)/i],
      ["Do you like chips?", false, /yes/i],
    ]
  end
 
  def build_questions
    questions_source.collect do |text, important, validation| 
      Question.new(:text => text, :important => important, :validation => validation)
    end
  end
 
  def questions
    build_questions.shuffle
  end
 
  def run
    result = nil
    
    questions.each do |question|
      if question.important?
        result = question.ask
      else
        question.ask
      end
    end
 
    say "I knew you'd say '#{ result.answer }' in response to '#{ result.text }'!!!"
  end
end
 
Questioner.new.run