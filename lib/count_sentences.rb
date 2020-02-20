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
    self.split(/\. |\? |! /).length
  end
  # def count_sentences
  #   @a = []
  #   @b = []
  #   @c = []
  #   @d = []
  #   if self.include?(". ")
  #     @a = self.split(". ")
  #     @a.each do |x|
  #       if !x.include?(". ") && !x.include?("! ") && !x.include?("? ")
  #         @d << x
  #       end
  #     end
  #     @a.each do |x|
  #       if x.include?("! ")
  #         @b = x.split("! ")
  #       elsif x.include?("? ")
  #         @b = x.split("? ")
  #       end
  #     end
  #     @b.each do |x|
  #       if !x.include?("! ") && !x.include?("? ") && !x.include?(". ")
  #         @d << x
  #       end
  #       if x.include?("? ")
  #         @c = x.split
  #       end
  #     end
  #     @c.each do |x|
  #       if !x.include?("? ") && !x.include?("! ") && !x.include?(". ")
  #         @d << x
  #       end
  #     end
  #   elsif
  #     self.include?("? ")
  #     @a = self.split("? ")
  #     @a.each do |x|
  #       if !x.include?("? ") && !x.include?("! ") && !x.include?(". ")
  #         @d << x
  #       end
  #     end
  #     @a.each do |x|
  #       if x.include?("! ")
  #         @b = x.split("! ")
  #       end
  #     end
  #     @b.each do |x|
  #       if !x.include?("! ")
  #         @d << x
  #       end
  #     end
  #   elsif
  #     self.include?("! ")
  #     @a = self.split("! ")
  #     @a.each do |x|
  #       if !(x.include?("? ")) && !(x.include?("! ")) && !(x.include?(". "))
  #         @d << x
  #       end
  #     end
  #   else
  #     @d = self
  #   end
  #   return @d.length
  # end
end


      
