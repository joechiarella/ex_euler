defmodule Euler25 do
  @moduledoc """
  What is the index of the first term in the Fibonacci sequence to contain
  1000 digits?
  """

  use Memoize

  def solve() do
    Stream.iterate(1, &(&1 + 1))
    |> Stream.map(&fib/1)
    |> Stream.with_index(1)
    |> Enum.find(&thousand_digits?/1)
    |> get_index
  end

  def get_index({_, index}) do
    index
  end

  def thousand_digits?({num, _}) do
    len = length(Integer.digits(num))
    len >= 1000
  end

  defmemo fib(1), do: 1
  defmemo fib(2), do: 1
  defmemo fib(n), do: fib(n - 1) + fib(n - 2)

end
