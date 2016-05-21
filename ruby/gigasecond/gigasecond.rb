class Gigasecond
  VERSION=1

  def self.from(birthday)
    Time.at(birthday.to_i + 10**9)
  end
end
