defmodule Euler16 do
  @moduledoc """
  2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

  What is the sum of the digits of the number 2^1000?
  """

  def solve do
    pow(2, 1000)
    |> Integer.to_charlist
    |> Enum.map(&(&1 - ?0))
    |> Enum.sum
  end

  def  pow(n, k), do: pow(n, k, 1)
  defp pow(_, 0, acc), do: acc
  defp pow(n, k, acc), do: pow(n, k - 1, n * acc)

end
