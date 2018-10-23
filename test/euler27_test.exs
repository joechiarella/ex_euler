defmodule Euler27Test do
  use ExUnit.Case

  test "Solve #27" do
    assert Euler27.solve() == -59231
  end

  test "Number of primes" do
    assert Euler27.number_of_primes(1, 41) == 39
    assert Euler27.number_of_primes(-79, 1601) == 79
  end
end
