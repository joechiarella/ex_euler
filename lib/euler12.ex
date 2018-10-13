defmodule Euler12 do
  @moduledoc """
  What is the value of the first triangle number to have over five hundred divisors?
  """

  def solve do
    Stream.iterate(1, &(&1 + 1))
    |> Stream.map(&get_triangle_num/1)
    |> Enum.find(&(number_of_divisors(&1) > 500))
  end

  def get_triangle_num(num) do
    div(num * (num + 1), 2)
  end

  def number_of_divisors(1), do: 1
  def number_of_divisors(3), do: 2

  def number_of_divisors(num) do
    sqrt = Kernel.trunc(:math.sqrt(num))
    2 * (1..(sqrt)
    |> Enum.filter(&(rem(num, &1) == 0))
    |> Enum.count)
  end
end
