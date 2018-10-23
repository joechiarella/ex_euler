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

  def multiplicative_order(_, n, m, current) when rem(current, n) == 1, do: m
  def multiplicative_order(k, n, m, current) do
    multiplicative_order(k, n, m + 1, current * k)
  end

  def gcd(a, b) when b == 0, do: a
  def gcd(a, b), do: gcd(b, rem(a, b))

end
