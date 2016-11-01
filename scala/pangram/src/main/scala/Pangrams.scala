object Pangrams {
  def isPangram(input: String) : Boolean = {
    val inputSet = input.toLowerCase.toSet
    ('a' to 'z').toSet.forall { letter : Char =>
      inputSet.contains(letter)
    }
  }
}
