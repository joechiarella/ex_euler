defmodule Euler24 do
  @moduledoc """
  A permutation is an ordered arrangement of objects. For example, 3124 is one
  possible permutation of the digits 1, 2, 3 and 4. If all of the permutations
  are listed numerically or alphabetically, we call it lexicographic order. The
  lexicographic permutations of 0, 1 and 2 are:

  012   021   102   120   201   210

  What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4,
  5, 6, 7, 8 and 9?
  """

  def solve() do
    '0123456789'
    |> get_permutations
    |> Enum.at(999_999)
    |> List.to_integer
  end

  def get_permutations([a]), do: [[a]]
  def get_permutations([a, b]), do: [[a, b], [b, a]]
  def get_permutations(list) do
    for a <- list,
        rest = List.delete(list, a),
        permutation <- get_permutations(rest) do
      [a | permutation]
    end
  end


end
