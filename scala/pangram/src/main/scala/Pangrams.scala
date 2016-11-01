object Pangrams {
  def isPangram(input: String) : Boolean = {
    val inputSet = input.toLowerCase.toSet

    ('a' to 'z').forall(inputSet.contains(_))
  }
}
