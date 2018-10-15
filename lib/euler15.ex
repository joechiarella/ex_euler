defmodule Euler15 do
  @moduledoc """
  Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down,
  there are exactly 6 routes to the bottom right corner.


  How many such routes are there through a 20×20 grid?
  """
  use Memoize

  def solve(size \\ 20) do
    number_of_routes(0, 0, size)
  end

  defmemo number_of_routes(i, j, size) when i < size and j < size do
    number_of_routes(i + 1, j, size) + number_of_routes(i, j + 1, size)
  end

  defmemo number_of_routes(_, _, _) do
    1
  end


end
