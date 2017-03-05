module Grains
  @@chessboard = (1..64).to_a.map { |square_number| 2**(square_number - 1) }

  def self.square(square_number)
    raise ArgumentError if square_number < 1 || square_number > 64

    @@chessboard[square_number - 1]
  end

  def self.total
    @@chessboard.reduce(:+)
  end
end

module BookKeeping
  VERSION = 1
end
