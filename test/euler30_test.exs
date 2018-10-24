defmodule Euler30Test do
  use ExUnit.Case

  test "Solve #30" do
    assert Euler30.solve == 443839
  end

  test "sum of powers of digits" do
    assert Euler30.sum_of_powers_of_digits(1, 4) == 1
    assert Euler30.sum_of_powers_of_digits(2, 2) == 4
    assert Euler30.sum_of_powers_of_digits(1634, 4) == 1634
    assert Euler30.sum_of_powers_of_digits(8208, 4) == 8208
    assert Euler30.sum_of_powers_of_digits(9474, 4) == 9474
  end



end
