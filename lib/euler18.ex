defmodule Euler18 do
  @moduledoc """
  By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

  3
  7 4
  2 4 6
  8 5 9 3

  That is, 3 + 7 + 4 + 9 = 23.

  Find the maximum total from top to bottom of the triangle below:

  75
  95 64
  17 47 82
  18 35 87 10
  20 04 82 47 65
  19 01 23 75 03 34
  88 02 77 73 07 63 67
  99 65 04 28 06 16 70 92
  41 41 26 56 83 40 80 70 33
  41 48 72 33 47 32 37 16 94 29
  53 71 44 65 25 43 91 52 97 51 14
  70 11 33 28 77 73 17 78 39 68 17 57
  91 71 52 38 17 14 91 43 58 50 27 29 48
  63 66 04 68 89 53 67 30 73 16 69 87 40 31
  04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
  """

  def solve(triangle) do
    string_to_lists(triangle)
    |> reduce
  end

  # when the triangle is collapsed down to one row with one value, that's the
  # answer
  def reduce([[last_value] | []]) do
    last_value
  end

  # take the bottom two rows of the triangle and merge them
  def reduce([bottom_row | [second_row | rest]]) do
    merged_row = reduce_row(bottom_row)
    |> merge_with(second_row)

    reduce([merged_row | rest])
  end

  # merges two lists (of the same size) together, adding their values
  def merge_with(first, second) do
    Enum.zip(first, second)
    |> Enum.map(fn {a, b} -> a + b end)
  end

  # if the row has a single value, nothing to merge
  def reduce_row([a | []]) do
    [ a ]
  end

  # row with two values, take the higher and stop
  def reduce_row([a | [b | []]]) do
    [ max(a, b) ]
  end

  # row with more than 2 values, take max of first two and recurse
  def reduce_row([a | [b | rest]]) do
    [ max(a, b) | reduce_row([b | rest]) ]
  end

  # convert the triangle to a list of lists, and reverse them so the widest
  # row is on top
  def string_to_lists(triangle) do
    String.split(triangle, "\n", trim: true)
    |> Enum.map(&row_to_list(&1))
    |> Enum.reverse()
  end

  def row_to_list(row) do
    String.split(row, " ")
    |> Enum.map(&String.to_integer(&1))
  end
end
