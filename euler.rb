module Euler
  class Fibonacci
    def initialize(max_term)
      @max_term = max_term
    end

    # Yields next even term in fibonacci sequence, up to @max_term
    def fibonacci_even_only
      return Enumerator.new { |generator|
        first = 0
        second = 1

        while true
          if first == 0
            generator.yield 0
          end

          first, second = swap(first, first + second)
          break if second >= @max_term
          generator.yield(first) unless first % 2 != 0
        end
      }
    end

    # Swaps first and second
    def swap(first, second)
      tmp = first
      first = second
      second = tmp
      return first, second
    end

    # Returns sum of even fibonacci terms, with terms up to @max_term
    def sum_even_fibonacci
      generator = fibonacci_even_only
      sum = 0
      # I _swear_ there was generator.next? but I guess there totally isn't.  We break on StopIteration.
      begin
        while true
        sum += generator.next
        end
      rescue StopIteration
        return sum
      end
    end
  end
end