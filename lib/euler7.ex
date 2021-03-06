defmodule Euler7 do
  @moduledoc """
  What is the 10 001st prime number?

  ## Solution

    iex> Euler7.solve
    104743

  """
  @count 10_001

  def solve do
    find_prime(3, 2, [2, 3])
  end

  def find_prime(prev_num, prime_count, prime_list) when prime_count < @count do
    next_num = prev_num + 2
    if is_prime(next_num, prime_list) do
      find_prime(next_num, prime_count + 1, prime_list ++ [next_num])
    else
      find_prime(next_num, prime_count, prime_list)
    end
  end

  def find_prime(prev_num, _, _) do
    prev_num
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
