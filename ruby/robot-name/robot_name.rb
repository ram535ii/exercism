module UniqueNameGenerator
  @@used_names = []

  def self.unique_name
    name = random_name
    while @@used_names.include?(name) do
      name = random_name
    end

    @@used_names << name
    name
  end

  def self.random_name
    "#{two_random_letters}#{three_random_integers}"
  end

  def self.return_name(name)
    @@used_names.delete(name)
  end

  private_class_method def self.two_random_letters
    ("A".."Z").to_a.sample(2).join
  end

  private_class_method def self.three_random_integers
    (0..9).to_a.sample(3).join
  end
end

class Robot
  attr_reader :name

  def initialize(generator: UniqueNameGenerator)
    @generator = UniqueNameGenerator
    set_name
  end

  def reset
    @generator.return_name(@name)
    set_name
  end

  def set_name
    @name = @generator.unique_name
  end
end

module BookKeeping
  VERSION=2
end
