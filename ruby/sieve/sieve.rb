class Sieve
  attr_reader :remaining_numbers

  def initialize(top_limit)
    @remaining_numbers = (2..top_limit).to_a
  end

  def primes
    return [] unless remaining_numbers.count > 0
    handle_next_prime(remaining_numbers[0])

    remaining_numbers
  end

  private
    def handle_next_prime(number)
      return unless number < remaining_numbers.last
      remove_multiple(number, number)

      index = remaining_numbers.find_index number
      handle_next_prime(remaining_numbers[index + 1])
    end

    def remove_multiple(number, increment)
      number_to_delete = number + increment
      remaining_numbers.delete(number_to_delete)
      remove_multiple(number_to_delete, increment) if number_to_delete < remaining_numbers.last
    end
end
