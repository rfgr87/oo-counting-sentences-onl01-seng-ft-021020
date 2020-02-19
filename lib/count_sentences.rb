require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false 
    end
    
  end

  def question?
    if self.end_with?("?")
      true 
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    @sentences = []
    @sentences = self.split(".")
    @sentences.collect do |fragments|
      @sentences = fragments.split("!")
    end
    @sentences.each do |fragments|
      @sentences = fragments.split("?")
    end
    @sentences.length
  end

end
