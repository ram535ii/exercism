class Prime
  def self.nth(n)
    raise ArgumentError.new("'n' must be positive") if n < 1

    primes = []
    candidate = 1

    while n > primes.length
      candidate += 1

      if primes.any? { |prime| candidate % prime == 0 }
        next
      end

      primes.push(candidate)
    end

    primes[-1]
  end
end

module BookKeeping
  VERSION = 1
end
