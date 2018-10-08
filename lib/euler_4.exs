# A palindromic number reads the same both ways. The largest palindrome made from
# the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.
defmodule Euler_4 do
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

IO.puts inspect Euler_4.solve
