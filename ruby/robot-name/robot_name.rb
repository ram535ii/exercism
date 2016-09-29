class Robot

  def initialize
    set_random_name
  end

  def name
    @name
  end

  def reset
    set_random_name
  end

  def set_random_name
    @name = "#{two_random_letters}#{three_random_integers}"
  end

  def two_random_letters
    ("A".."Z").to_a.sample(2).join
  end

  def three_random_integers
    (0..9).to_a.sample(3).join
  end
end

module BookKeeping
  VERSION=2
end
