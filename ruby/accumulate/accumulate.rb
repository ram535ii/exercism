class Object
  def accumulate(&block)
    result = []
    self.each do |element|
      result.push(block.call(element))
    end
    result
  end
end

module BookKeeping
  VERSION=1
end
