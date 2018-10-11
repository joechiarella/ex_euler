defmodule Euler10Test do
  use ExUnit.Case

  test "Solves Euler #10 (10)" do
    assert Euler10.solve(10) == 17
  end

  test "Solves Euler #10 (100)" do
    assert Euler10.solve(100) == 1060
  end

  test "Solves Euler #10 (1000)" do
    assert Euler10.solve(1000) == 76127
  end

  test "Solves Euler #10 (10000)" do
    assert Euler10.solve(10000) == 5736396
  end

  test "Solves Euler #10 (100000)" do
    assert Euler10.solve(100000) == 454396537
  end

  test "Solves Euler #10 (2mil)" do
    assert Euler10.solve(2_000_000) == 142_913_828_922
  end
end
