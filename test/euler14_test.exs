defmodule Euler14Test do
  use ExUnit.Case

  test "Solves Euler #14" do
    assert Euler14.solve == 837799
  end

  test "Collatz for 13" do
    assert Euler14.collatz_length(13) == 10
  end
end
