defmodule Euler_4 do

  @doc """
  A palindromic number reads the same both ways. The largest palindrome made from
  the product of two 2-digit numbers is 9009 = 91 × 99.

  Find the largest palindrome made from the product of two 3-digit numbers.

  ## Solution

    iex> Euler_4.solve
    906609

  """
  def solve do
    palindromes = for i <- 100..999, j <- i..999,
        is_palindrome( i * j ),
        into: [],
      do: i * j

    Enum.max(palindromes)
  end

  def is_palindrome(num) do
    string = Integer.to_charlist(num)
    string == Enum.reverse(string)
  end
end
