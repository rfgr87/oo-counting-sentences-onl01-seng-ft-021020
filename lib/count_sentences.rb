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
    @c = []
    @d = []
    if self.include?(".")
      @a = self.split(".")
      @a.each do |x|
        if !x.include?(".") || !x.include?("!") || !x.include?("?")
          @d << x
        end
      end
      @a.each do |x|
        if x.include?("!")
          @b = x.split("!")
          @b.each do |x|
            if !x.include?("!") || !x.include?("?")
              @d << x
            end
          @b.each do |x|
            if x.include?("?")
              @c = x.split
            end
          end
        elsif 
          x.include?("?")
          @b = x.split("?")
        end
      end
      @a.each do |x|
        if !(x.include?("?")) || !(x.include?("!")) || !(x.include?("."))
          @d << x
        end
      end
      if @b.length > 0
        @b.each do |x|
          @d << x
        end
      end
      if @c.length > 0
        @c.each do |x|
          @d << x
        end
      end
      return @d.length
    elsif
      self.include?("?")
      @a = self.split("?")
      @a.each do |x|
        if x.include?("!")
          @b = x.split("!")
        end
      end
    @a.each do |x|
      if !(x.include?("?")) || !(x.include?("!")) ||
        !(x.include?("."))
        @d << x
      end
    end
    if @b.length > 0
      @b.each do |x|
        @d << x
      end
    end
    return @d.length
    elsif
      self.include?("!")
      @a = self.split("!")
      @a.each do |x|
        if !(x.include?("?")) || !(x.include?("!")) || !(x.include?("."))
          @d << x
        end
      end
      return @d.length 
    elsif
    @d = @a
    @d.length
  end
end
end
  
