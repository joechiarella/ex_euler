# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
defmodule Euler_3 do
  @num 600851475143
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

IO.puts Euler_3.solve
