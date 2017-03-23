class Array
  def keep(&block)
    self.map { |ele| block.call(ele) ? ele : nil }.compact
  end

  def discard(&block)
    self.map { |ele| block.call(ele) ? nil : ele }.compact
  end
end
