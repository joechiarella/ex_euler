defmodule Euler9Test do
  use ExUnit.Case

  test "Solves Euler #9" do
    assert Euler9.solve == 31875000
  end

  test "pythagorean triplet" do
    assert Euler9.pythagorean_triplet?(3, 4, 5) == true
    assert Euler9.pythagorean_triplet?(3, 4, 4) == false

  end
end
