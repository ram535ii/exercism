module RunLengthEncoding
  def self.encode(input)
    output = ""
    previous_char = input.slice!(0)
    count = 1

    input.chars.each_with_index do |char, index|
      if char == previous_char
        count+=1
      else
        addition = count == 1 ? "#{previous_char}" : "#{count}#{previous_char}"
        output += addition
        count = 1
      end

      previous_char = char
    end

    addition = count == 1 ? "#{previous_char}" : "#{count}#{previous_char}"
    output += addition

    output
  end

  def self.decode(input)
    output = ""
    segments = input.scan(/\d+|\D+/)

    until segments.length == 0
      segment = segments.shift
      if segment.to_i == 0
        output += segment
      else
        following_chars = segments.shift
        output += "#{following_chars.slice!(0) * segment.to_i}#{following_chars.empty? ? '' : following_chars}"
      end
    end

    output
  end
end


module BookKeeping
  VERSION=2
end
