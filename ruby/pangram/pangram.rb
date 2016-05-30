class Pangram
  def self.is_pangram? string
    ("a".."z").each do |letter|
      return false unless string.downcase.include? letter
    end
    return true
  end
end

module BookKeeping
  VERSION=2
end
