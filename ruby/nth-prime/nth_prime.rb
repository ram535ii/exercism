class Prime
  def self.nth(n)
    raise ArgumentError.new("'n' must be positive") if n < 1

    primes = [2]
    candidate = 1

    until n == primes.length
      candidate += 1

      if primes.none? { |prime| candidate % prime == 0 }
        primes.push(candidate)
      end
    end

    primes.last
  end
end

module BookKeeping
  VERSION = 1
end
