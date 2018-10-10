defmodule Euler10 do
  @moduledoc """
  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

  Find the sum of all the primes below two million.
  """

  def solve(max \\ 2_000_000) do
    Enum.sum(find_primes(5, max, [2, 3]))
  end

  def find_primes(current_num, max, prime_list) when current_num < max do
    if is_prime(current_num, prime_list) do
      find_primes(current_num + 2, max, prime_list ++ [current_num])
    else
      find_primes(current_num + 2, max, prime_list)
    end
  end

  def find_primes(_, _, prime_list) do
    prime_list
  end

  def is_prime(n, [factor | prime_list]) when factor * factor <= n do
    if is_factor(n, factor) do
      false
    else
      is_prime(n, prime_list)
    end
  end

  def is_prime(_, _), do: true

  def is_factor(n, factor) do
    rem(n, factor) == 0
  end

end
