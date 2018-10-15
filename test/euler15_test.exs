defmodule Euler15Test do
  use ExUnit.Case

  test "Solves Euler #15 size = 2" do
    assert Euler15.solve(2) == 6
  end

  test "Solves Euler #15 size = 12" do
    assert Euler15.solve(20) == 2704156
  end
end
