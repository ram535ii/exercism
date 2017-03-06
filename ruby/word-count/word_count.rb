class Phrase
  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    word_count_per_word = {}

    @sentence.scan(/\b[^\s,]+\b/)
              .map(&:downcase)
              .each do |word|
                word_count_per_word[word] = (word_count_per_word[word] || 0) + 1
              end

    word_count_per_word
  end
end

module BookKeeping
  VERSION = 1
end
