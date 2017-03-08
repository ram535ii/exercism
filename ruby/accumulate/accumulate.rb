class Array
  def accumulate(&block)
    tco_accumulate(&block)
  end

  def tco_accumulate(acc=[], &block)
    head, *tail = self
    return acc unless head

    acc << block.call(head)
    tail.tco_accumulate(acc, &block)
  end
end

module BookKeeping
  VERSION=1
end
