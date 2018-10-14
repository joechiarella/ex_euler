defmodule Euler14 do
  @moduledoc """
  The following iterative sequence is defined for the set of positive integers:

  n → n/2 (n is even)
  n → 3n + 1 (n is odd)

  Using the rule above and starting with 13, we generate the following sequence:

  13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
  It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
  Although it has not been proved yet (Collatz Problem), it is thought that all starting
  numbers finish at 1.

  Which starting number, under one million, produces the longest chain?
  """

  require Integer
  use Memoize

  def solve do
    {num, _} = for num <- 1..1_000_000, into: [] do
      {num, collatz_length(num, 0)}
    end
    |> Enum.reduce({1, 1}, &longest/2)
    num
  end

  def longest({num, longest_length}, {_, new_length}) when longest_length > new_length do
    {num, longest_length}
  end

  def longest(_, new_longest), do: new_longest

  def collatz_length(_, length \\ 0)

  def collatz_length(1, length), do: length + 1

  def collatz_length(num, length) when Integer.is_even(num) do
    collatz_length(div(num, 2), length + 1)
  end

  def collatz_length(num, length) do
    collatz_length(3 * num + 1, length + 1)
  end

end
