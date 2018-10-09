defmodule Euler_1 do
  @doc """
  If we list all the natural numbers below 10 that are multiples of 3 or 5,
  we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.

  ## Solution

    iex> Euler_1.solve
    233168

  """
  def solve do
    list = for i <- 1..999,
      rem(i, 3) == 0 or rem(i, 5) == 0,
      into: [],
      do: i

    Enum.sum(list)
  end
end
