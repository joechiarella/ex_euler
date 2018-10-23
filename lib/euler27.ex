defmodule Euler27 do
  @moduledoc """
  Considering quadratics of the form:

  n^2+an+b, where |a|<1000 and |b|≤1000

  Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum
  number of primes for consecutive values of n, starting with n=0.
  """

  def solve do
    {a, b, _} = find_max_coefficients()
    a * b
  end

  def find_max_coefficients() do
    for a <- -1000..1000, b <- 0..1000,
        a > 1 - b,
        Math.is_prime(b) do
      {a, b, number_of_primes(a, b)}
    end
    |> Enum.max_by(fn {_, _, num} -> num end)
  end

  def number_of_primes(a, b) do
    {_, num} = find_first_non_prime(a, b)
    num - 1
  end

  def find_first_non_prime(a, b) do
    Stream.iterate(1, &(&1 + 1))
    |> Stream.map(&(f(a, b, &1)))
    |> Stream.with_index(1)
    |> Enum.find(fn {num, _} -> !Math.is_prime(num) end)
  end

  def f(a, b, n) do
    n * n + a * n + b
  end

end
