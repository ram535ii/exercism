class Phrase(string: String) {
  def wordCount() : Map[String,Int] = {
    string.toLowerCase
          .split("[^\\w']+")
          .groupBy(identity)
          .mapValues(_.length)
  }
}
