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
    if self.include?(". ")
      @a = self.split(". ")
      @a.each do |x|
        if !x.include?(". ") && !x.include?("! ") && !x.include?("? ")
          @d << x
        end
      end
      @a.each do |x|
        if x.include?("! ")
          @b = x.split("! ")
          @b.each do |x|
            if !x.include?("! ") && !x.include?("? ") && !x.include?(". ")
              @d << x
            end
            if x.include?("? ")
              @c = x.split
              @c.each do |x|
                if !x.include?("? ") && !x.include?("! ") && !x.include?(". ")
                  @d << x
                end
              end
            end
          end
        else
          if x.include?("? ")
            @b = x.split("? ")
            @b.each do |x|
              if !x.include?("? ") && !x.include?("! ") && !x.include?(". ")
              @d << x
              end
            end
          end
        end
      end
    elsif
      self.include?("? ")
      @a = self.split("? ")
      @a.each do |x|
        if !x.include?("? ") && !x.include?("! ") && !x.include?(". ")
          @d << x
        end
      end
      @a.each do |x|
        if x.include?("! ")
          @b = x.split("! ")
          @b.each do |x|
            if !x.include?("! ")
              @d << x
            end
          end
        end
      end
    elsif
      self.include?("! ")
      @a = self.split("! ")
      @a.each do |x|
        if !(x.include?("? ")) && !(x.include?("! ")) && !(x.include?(". "))
          @d << x
        end
      end
    elsif
      @d = self
    end
    return @d.length
  end
end
      
