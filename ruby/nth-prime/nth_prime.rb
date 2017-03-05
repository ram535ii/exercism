class Prime
  def self.nth(n)
    raise ArgumentError.new("'n' must be positive") if n < 1

    primes = []
    candidate = 1

    while n > primes.length
      candidate += 1

      if primes.none? { |prime| candidate % prime == 0 }
        primes.push(candidate)
      end
    end

    primes[-1]
  end
end

module BookKeeping
  VERSION = 1
end
