defmodule Euler28 do
  @moduledoc """
  Starting with the number 1 and moving to the right in a clockwise direction a
  5 by 5 spiral is formed as follows:
                 49
  21 22 23 24 25
  20  7  8  9 10
  19  6  1  2 11
  18  5  4  3 12
  17 16 15 14 13

  It can be verified that the sum of the numbers on the diagonals is 101.

  What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?
  """

  def solve(size \\ 1001) do
    Stream.iterate(1, &(&1 + 2))
    |> Stream.take_while(&(&1 <= size))
    |> Stream.map(&get_box_sum/1)
    |> Enum.sum
  end

  @doc """
  Returns the highest number of the given row
  """
  def get_last_number(size) do
    size * size
  end

  @doc """
  Returns the sum of the 4 corner points of a box of the given size
  """
  def get_box_sum(1), do: 1
  def get_box_sum(size) do
    start = get_last_number(size - 2)
    interval = size - 1
    start * 4 + interval * 10
  end

end
