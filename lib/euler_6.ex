defmodule Euler_6 do
  @max 100

  @doc """
  Find the difference between the sum of the squares of the first one hundred
  natural numbers and the square of the sum.

  ## Solution

    iex> Euler_6.solve
    25164150

  """
  def solve do
    sum_of_squares = Enum.reduce(1..@max, 0, &(&2 + (&1 * &1)))
    sums = Enum.sum(1..@max)
    square_of_sums = sums * sums
    # IO.puts "sum of squares: #{sum_of_squares}  square of sums: #{square_of_sums}"
    square_of_sums - sum_of_squares
  end
end
