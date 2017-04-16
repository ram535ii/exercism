module ETL
  def self.transform(old_scrabble_scoring)
    new_scrabble_scoring = {}

    old_scrabble_scoring.each do |points, letters|
      letters.each do |letter|
        new_scrabble_scoring[letter.downcase] = points
      end
    end

    new_scrabble_scoring
  end
end
