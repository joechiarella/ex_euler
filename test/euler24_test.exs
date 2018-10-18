defmodule Euler24Test do
  use ExUnit.Case

  test "Solve #24" do
    assert Euler24.solve() == 2783915460
  end

  test "get_permutations" do
    assert Euler24.get_permutations('0') == ['0']
    assert Euler24.get_permutations('01') == ['01', '10']
    assert Euler24.get_permutations('012') == ['012', '021', '102', '120', '201', '210']
  end

end
