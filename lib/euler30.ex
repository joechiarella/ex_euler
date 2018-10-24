defmodule Euler30 do
  @moduledoc """
  Find the sum of all the numbers that can be written as the sum of fifth
  powers of their digits.
  """

  def solve do
    2..500000
    |> Enum.filter(&is_valid/1)
    |> Enum.sum
  end

  def is_valid(num) do
    sum_of_powers_of_digits(num, 5) == num
  end

  def sum_of_powers_of_digits(num, power) do
    num
    |> Integer.digits
    |> Enum.map(&(Math.pow(&1, power)))
    |> Enum.sum
  end

end
