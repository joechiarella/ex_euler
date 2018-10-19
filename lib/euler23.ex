defmodule Euler23 do
  @moduledoc """
  A perfect number is a number for which the sum of its proper divisors is exactly equal to the
  number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28,
  which means that 28 is a perfect number.

  A number n is called deficient if the sum of its proper divisors is less than n and it is
  called abundant if this sum exceeds n.

  As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can
  be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be
  shown that all integers greater than 28123 can be written as the sum of two abundant numbers.
  However, this upper limit cannot be reduced any further by analysis even though it is known
  that the greatest number that cannot be expressed as the sum of two abundant numbers is less
  than this limit.

  Find the sum of all the positive integers which cannot be written as the sum of two abundant
  numbers.
  """

  @max 28_123

  def solve do
    abundants = list_abundants()
    1..@max
    |> MapSet.new
    |> MapSet.difference(MapSet.new(get_abundant_sums(abundants)))
    |> Enum.sum()
  end

  def get_abundant_sums([]), do: []
  def get_abundant_sums([first | rest]) do
    [first * 2 | get_combinations(first, rest)] ++ get_abundant_sums(rest)
  end

  def get_combinations(first, [second | rest]) when first + second <= @max do
    [first + second | get_combinations(first, rest)]
  end
  def get_combinations(_, _), do: []

  def list_abundants do
    for i <- 12..@max, is_abundant(i), do: i
  end

  def is_abundant(num) do
    sum_of_divisors(num) > num
  end

  def sum_of_divisors(1), do: 1
  def sum_of_divisors(2), do: 1
  def sum_of_divisors(3), do: 1

  def sum_of_divisors(num) do
    sqrt = Kernel.trunc(:math.sqrt(num))
    divisors = 2..sqrt
    |> Enum.filter(&(rem(num, &1) == 0))
    |> Enum.flat_map(&(Enum.uniq([&1, div(num, &1)])))
    |> Enum.sum()
    divisors + 1
  end
end
