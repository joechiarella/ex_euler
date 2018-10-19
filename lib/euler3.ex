defmodule Euler3 do
  @num 600_851_475_143

  @moduledoc """
  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143 ?

  ## Solution

    iex> Euler3.solve
    6857

  """
  def solve do
    sqrt = Kernel.trunc(:math.sqrt(@num))
    sqrt..1
      |> Stream.filter(&is_factor(@num, &1))
      |> Enum.find(&is_prime(&1))
  end

  def is_prime(2), do: true
  def is_prime(n) do
    sqrt = Kernel.trunc(:math.sqrt(n)) + 1
    !Enum.any?(2..sqrt, &is_factor(n, &1))
  end

  def is_factor(n, factor) do
    rem(n, factor) == 0
  end
end
