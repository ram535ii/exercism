object Hamming {
  def compute(strand_one: String, strand_two: String) : Option[Int] = {
    if(strand_one.length != strand_two.length) return None
    Some(strand_one.zipWithIndex.filter { case (element, index) => element != strand_two(index)  }.length)
  }
}

