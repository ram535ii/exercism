class Bob
  def self.hey(remark)
    if is_shouting(remark)
      "Whoa, chill out!"
    elsif is_question(remark)
      "Sure."
    elsif is_silent(remark)
    "Fine. Be that way!"
    else
      "Whatever."
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
    remark[-1] == "?"
  end
  private_class_method :is_question

  def self.is_silent(remark)
    remark.strip.empty?
  end
  private_class_method :is_silent
end
