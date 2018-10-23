defmodule Euler28Test do
  use ExUnit.Case

  test "Solve #28" do
    assert Euler28.solve(1001) == 669171001
  end

  test "Solve #28 simple" do
    assert Euler28.solve(1) == 1
    assert Euler28.solve(3) == 25
    assert Euler28.solve(5) == 101
  end

  test "get_last_number" do
    assert Euler28.get_last_number(1) == 1
    assert Euler28.get_last_number(3) == 9
    assert Euler28.get_last_number(5) == 25
    assert Euler28.get_last_number(7) == 49
  end

  test "get box sum" do
    assert Euler28.get_box_sum(1) == 1
    assert Euler28.get_box_sum(3) == 24
    assert Euler28.get_box_sum(5) == 76
  end

end
