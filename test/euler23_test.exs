defmodule Euler23Test do
  use ExUnit.Case

  test "Solve #23" do
    assert Euler23.solve() == 4179871
  end

  test "is_abundant" do
    assert Euler23.is_abundant(12) == true
    assert Euler23.is_abundant(11) == false
  end

  test "get combinations" do
    assert Euler23.get_combinations(1, [2, 3, 4, 5]) == [3, 4, 5, 6]
  end

  test "get abundant sums" do
    assert Euler23.get_abundant_sums([1]) == [2]
    assert Euler23.get_abundant_sums([1, 2]) == [2, 3, 4]
    assert Euler23.get_abundant_sums([1, 2, 3]) == [2, 3, 4, 4, 5, 6]
  end
end
