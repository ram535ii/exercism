class Phrase
  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    word_count_per_word = {}

    @sentence.split(/[^a-zA-Z0-9']/)
              .reject(&:empty?)
              .map(&:downcase)
              .map { |word| word.gsub(/\A'|'\z/, "") }
              .each do |word|
                word_count_per_word[word] ||= 0
                word_count_per_word[word] += 1
              end

    word_count_per_word
  end
end

module BookKeeping
  VERSION = 1
end
