class Array
  def accumulate(&block)
    head, *tail = self
    return [] unless head
    [block.call(head)] + tail.accumulate(&block)
  end
end

module BookKeeping
  VERSION=1
end
