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
    @b = []
    @sentences = []
    @sentences = self.split(".")
    @sentences.collect do |fragments|
      @a << fragments.split("!")
    end
    @a.collect do |fragments|
      @b << fragments.split("?")
    end
    @b.length
  end

end
