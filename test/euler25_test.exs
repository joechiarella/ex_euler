defmodule Euler25Test do
  use ExUnit.Case

  test "Solve #25" do
    assert Euler25.solve() == 4782
  end

  test "Fibonacci" do
    assert Euler25.fib(1) == 1
    assert Euler25.fib(2) == 1
    assert Euler25.fib(3) == 2
    assert Euler25.fib(4) == 3
    assert Euler25.fib(5) == 5
  end
end
