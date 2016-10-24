object SumOfMultiples {
  def sumOfMultiples(numbers: List[Int], upperLimit: Int) : Int = {
    numbers.flatMap( number => Range(number, upperLimit, number) ).distinct.sum
  }
}

