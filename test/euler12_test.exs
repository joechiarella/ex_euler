defmodule Euler12Test do
  use ExUnit.Case

  test "Solves Euler #12" do
    assert Euler12.solve == 76576500
  end

  test "Number of divisors" do
    assert Euler12.number_of_divisors(1) == 1
    assert Euler12.number_of_divisors(3) == 2
    assert Euler12.number_of_divisors(6) == 4
    assert Euler12.number_of_divisors(10) == 4
    assert Euler12.number_of_divisors(15) == 4
    assert Euler12.number_of_divisors(21) == 4
    assert Euler12.number_of_divisors(28) == 6
  end

#   1: 1
#   3: 1,3
#   6: 1,2,3,6
#  10: 1,2,5,10
#  15: 1,3,5,15
#  21: 1,3,7,21
#  28: 1,2,4,7,14,28
end
