object Pangrams {
  def isPangram(input: String) : Boolean = {
    val inputSet = input.toLowerCase.toSet
    ('a' to 'z').toSet.foreach { letter : Char =>
      if(!inputSet.contains(letter)){
        return false
      }
    }
    return true
  }
}
