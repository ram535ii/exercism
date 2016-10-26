class Phrase(string: String) {
  def wordCount() : Map[String,Int] = {
    val m = collection.mutable.Map[String, Int]().withDefaultValue(0)
    string.split(" ").foreach { word =>
      m.update(word, m(word) + 1)
    }
    return m.toMap
  }
}
