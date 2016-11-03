class Anagram(word: String) {
  def matches(choices: Seq[String]) : Seq[String] = {
    choices.filter(_.toLowerCase.sorted == word.toLowerCase.sorted)
           .filter(_.toLowerCase != word.toLowerCase)
  }
}
