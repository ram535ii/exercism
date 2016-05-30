class Sieve
  attr_reader :remaining_numbers

  def initialize(top_limit)
    @remaining_numbers = (2..top_limit).to_a
  end

  def primes
    return [] unless remaining_numbers.count > 0
    next_prime = remaining_numbers[0]
    while next_prime < remaining_numbers.last do
      remove_multiple(next_prime, next_prime)
      index = remaining_numbers.find_index next_prime
      next_prime = remaining_numbers[index + 1]
    end

    remaining_numbers
  end

  private
    def remove_multiple(number, increment)
      number_to_delete = number + increment
      remaining_numbers.delete(number_to_delete)
      remove_multiple(number_to_delete, increment) if number_to_delete < remaining_numbers.last
    end
end
