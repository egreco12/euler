# Euler
Currently contains the solution for Euler Project #2: https://projecteuler.net/problem=2

# Usage
Simply open `irb`, require `euler.rb`, create an `Euler::Fibonacci` object with a `max_term` in the constructor,
and run `sum_even_fibonacci` on the object.  The result will be the answer to the problem.

Example usage:
```ruby
require './euler.rb'

fib = Euler::Fibonacci.new(4000000)
puts "Result: #{fib.sum_even_fibonacci}"

```
