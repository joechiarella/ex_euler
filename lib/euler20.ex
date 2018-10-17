defmodule Euler20 do
  @moduledoc """
  Find the sum of the digits in the number 100!
  """

  def solve() do
    factorial(100)
    |> Integer.digits
    |> Enum.sum
  end

  def factorial(1), do: 1
  def factorial(n) do
    n * factorial(n - 1)
  end

end
