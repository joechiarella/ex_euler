defmodule Euler10 do
  @moduledoc """
  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

  Find the sum of all the primes below two million.
  """

  def solve(max \\ 2_000_000) do
    not_primes = MapSet.new
    sum_primes(2, max, not_primes)
  end

  def sum_primes(current, max, not_primes) when current < max do
    if MapSet.member?(not_primes, current) do
      sum_primes(current + 1, max, not_primes)
    else
      current + sum_primes(current + 1, max, add_prime(not_primes, current, max))
    end
  end

  def sum_primes(_, _, _) do
    0
  end

  def add_prime(not_primes, prime, max) do
    Stream.iterate(prime * 2, &(&1 + prime))
    |> Enum.take_while(&(&1 < max))
    |> MapSet.new()
    |> MapSet.union(not_primes)
  end


end
