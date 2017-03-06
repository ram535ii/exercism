class Bob
  def self.hey(remark)
    case
      when is_shouting(remark) then "Whoa, chill out!"
      when is_question(remark) then "Sure."
      when is_silent(remark) then "Fine. Be that way!"
      else "Whatever."
    end
  end

  def self.is_shouting(remark)
    is_uppercase(remark) && has_letters(remark)
  end
  private_class_method :is_shouting

  def self.is_uppercase(remark)
    remark.upcase == remark
  end
  private_class_method :is_uppercase

  def self.has_letters(remark)
    !!(remark =~ /[[:alpha:]]/)
  end
  private_class_method :has_letters

  def self.is_question(remark)
    remark.end_with?("?")
  end
  private_class_method :is_question

  def self.is_silent(remark)
    remark.strip.empty?
  end
  private_class_method :is_silent
end
