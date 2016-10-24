class Bob {
  def hey(query: String) : String = {
    if(isSilent(query)) "Fine. Be that way!"
    else if(isYelling(query)) "Whoa, chill out!"
    else if(isQuestion(query)) "Sure."
    else return "Whatever."
  }

  private def isSilent(str: String) : Boolean =
    str.trim == ""

  private def isYelling(str: String) : Boolean =
    isUpperCase(str) && hasLetter(str)

  private def isUpperCase(str: String) : Boolean =
    str.toUpperCase == str

  private def hasLetter(str: String) : Boolean =
    str.exists(_.isLetter)

  private def isQuestion(str: String) : Boolean =
    str.endsWith("?")
}
