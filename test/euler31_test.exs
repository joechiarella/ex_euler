defmodule Euler31Test do
  use ExUnit.Case

  test "Solve #31 for simple values" do
    assert Euler31.solve(1) == 1
    assert Euler31.solve(2) == 2
    assert Euler31.solve(3) == 2
    assert Euler31.solve(4) == 3
    assert Euler31.solve(5) == 4
  end

  test "Solve #31 for 200p" do
    assert Euler31.solve(200) == 73682
  end

end
