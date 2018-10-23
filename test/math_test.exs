defmodule MathTest do
  use ExUnit.Case

  test "Multiplicative Order" do
    assert Math.multiplicative_order(10, 6) == 1
    assert Math.multiplicative_order(10, 7) == 6
    assert Math.multiplicative_order(7, 108) == 18
  end
end
