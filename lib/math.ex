defmodule Math do
  @moduledoc """
  Common math functions
  """

  @doc """
  Gives the multiplicative order of k modulo n, defined as the smallest integer
  m such that k^m === 1 mod n
  """
  def multiplicative_order(k, n) do
    if gcd(k, n) != 1 do
      -1
    else
      multiplicative_order(k, n, 1, k)
    end
  end

  defp multiplicative_order(_, n, m, current) when rem(current, n) == 1, do: m
  defp multiplicative_order(k, n, m, current) do
    multiplicative_order(k, n, m + 1, current * k)
  end

  def gcd(a, b) when b == 0, do: a
  def gcd(a, b), do: gcd(b, rem(a, b))

  def is_prime(1), do: false
  def is_prime(2), do: true
  def is_prime(n) when n < 0, do: false
  def is_prime(n) do
    sqrt = Kernel.trunc(:math.sqrt(n)) + 1
    !Enum.any?(2..sqrt, &is_factor(n, &1))
  end

  def is_factor(n, factor) do
    rem(n, factor) == 0
  end

  def  pow(n, k), do: pow(n, k, 1)
  defp pow(_, 0, acc), do: acc
  defp pow(n, k, acc), do: pow(n, k - 1, n * acc)

end
