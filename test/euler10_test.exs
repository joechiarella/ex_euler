defmodule Euler10Test do
  use ExUnit.Case

  test "Solves Euler #10 (10)" do
    assert Euler10.solve(10) == 17
  end

  test "Solves Euler #10 (2mil)" do
    assert Euler10.solve(2_000_000) == 142_913_828_922
  end
end
