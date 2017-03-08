# Enable tail call optimization
RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

class Array
  def accumulate(&block)
    return to_enum(:accumulate) {size} unless block_given?

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
