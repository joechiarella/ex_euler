defmodule Euler_5 do
  @max 20

  @doc """
  2520 is the smallest number that can be divided by each of the numbers from
  1 to 10 without any remainder.

  What is the smallest positive number that is evenly divisible by all of the
  numbers from 1 to 20?

  ## Solution

    iex> Euler_5.solve
    232792560

  """
  def solve do
    largest = Enum.reduce(1..@max, 1, &(&1 * &2))
    remove_factors(largest)
  end

  def remove_factors(num) do
    factor = Enum.find(2..@max, &is_duplicate_factor(num, &1))
    remove_factor(num, factor)
  end

  def remove_factor(num, nil) do
    num
  end

  def remove_factor(num, factor) do
    new_num = div(num, factor)

    # IO.puts "#{num} / #{factor} = #{new_num}"
    remove_factors(new_num)
  end

  def is_duplicate_factor(num, factor) do
    is_factor(num, factor) && is_solution(div(num, factor))
  end

  def is_solution(num) do
    Enum.all?(2..@max, &is_factor(num, &1))
  end

  def is_factor(n, factor) do
    rem(n, factor) == 0
  end
end

IO.puts Euler_5.solve
