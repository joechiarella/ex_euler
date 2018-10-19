defmodule Euler9 do
  @moduledoc """
  A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

  a^2 + b^2 = c^2
  For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  Find the product abc.
  """

  @doc """
  This is a brute force solution but with a few optimizations.

  There are a few assumptions you can make:
    1. If A + B + C = 1000, then C = 1000 - (A + B) for any A and B
    2. A < B < C, so A has to be less than 1000/3
    3. Therefore, B < 1000 - (A + B), or simplified, B < 500 - A/2
  """
  def solve do
    [solution] =
      for a <- 1..333,
          b <- a..(500 - div(a, 2)),
          c = 1000 - (a + b),
      pythagorean_triplet?(a, b, c),
      into: [],
      do: a * b * c
    solution
  end

  def pythagorean_triplet?(a, b, c) do
    a * a + b * b == c * c
  end

end
