class Array
  def keep(&block)
    map { |ele| block.call(ele) ? ele : nil }.compact
  end

  def discard(&block)
    keep { |ele| !block.call(ele) }
  end
end
