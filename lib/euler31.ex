defmodule Euler31 do
  @moduledoc """
  In England the currency is made up of pound, £, and pence, p, and there are
  eight coins in general circulation:

  1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
  It is possible to make £2 in the following way:

  1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
  How many different ways can £2 be made using any number of coins?
  """

  def solve(total) do
    subtract(total, coin_list())
  end

  def subtract(_, [1]), do: 1

  def subtract(total, [coin | rest] = coins) when total >= 0 do
    subtract(total, rest) + subtract(total - coin, coins)
  end

  def subtract(_, _), do: 0

  def coin_list do
    [200, 100, 50, 20, 10, 5, 2, 1]
  end
end
