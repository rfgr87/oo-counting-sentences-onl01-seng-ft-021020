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
    @a = []
    @sentences = []
    @sentences = self.split(".")
    @sentences.collect do |fragments|
      @a = fragments.split("!")
    end
    @a.collect do |fragments|
      @a = fragments.split("?")
    end
    @a.length
  end

end
