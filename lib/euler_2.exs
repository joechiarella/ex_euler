# By considering the terms in the Fibonacci sequence whose values do not exceed
# four million, find the sum of the even-valued terms.
defmodule Euler_2 do
  require Integer

  @limit 4_000_000
  def solve do
    fib_sum(0, 1)
  end

  def fib_sum(prev, current)
      when current < @limit and Integer.is_even(current) do
    current + fib_sum(current, prev + current)
  end

  def fib_sum(prev, current)
      when current < @limit do
    fib_sum(current, prev + current)
  end

  def fib_sum(_, _), do: 0
end

IO.puts Euler_2.solve
