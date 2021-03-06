defmodule Euler16 do
  @moduledoc """
  2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

  What is the sum of the digits of the number 2^1000?
  """

  def solve do
    Math.pow(2, 1000)
    |> Integer.digits
    |> Enum.sum
  end
end
