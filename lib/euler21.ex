defmodule Euler21 do
  @moduledoc """
  Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly
  into n).
  If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are
  called amicable numbers.

  For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110;
  therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

  Evaluate the sum of all the amicable numbers under 10000.
  """

  def solve() do
    for n <- 1..9999, is_amicable(n) do
      n
    end
    |> Enum.sum
  end

  def is_amicable(num) do
    other_num = sum_of_divisors(num)
    other_num != num and other_num < 10_000 and sum_of_divisors(other_num) == num
  end

  def sum_of_divisors(1), do: 1
  def sum_of_divisors(2), do: 1
  def sum_of_divisors(3), do: 1

  def sum_of_divisors(num) do
    sqrt = Kernel.trunc(:math.sqrt(num))
    divisors = 2..sqrt
    |> Enum.filter(&(rem(num, &1) == 0))
    |> Enum.flat_map(&([&1, div(num, &1)]))
    |> Enum.sum()
    divisors + 1
  end


end
