object Hamming {
  def compute(strand_one: String, strand_two: String) : Option[Int] = {
    if(strand_one.length != strand_two.length)
      None
    else
      Some(strand_one.zip(strand_two).count { case (elem_one, elem_two) => elem_one != elem_two})
  }
}

