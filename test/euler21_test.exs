defmodule Euler21Test do
  use ExUnit.Case

  test "Sum of divisors" do
    assert Euler21.sum_of_divisors(220) == 284
    assert Euler21.sum_of_divisors(284) == 220
  end

  test "Solve #21" do
    assert Euler21.solve() == 31626
  end

end
