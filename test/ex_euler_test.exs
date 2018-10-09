defmodule ExEulerTest do
  use ExUnit.Case
  doctest Euler_1
  doctest Euler_2
  doctest Euler_3
  doctest Euler_4
  doctest Euler_5
  doctest Euler_6
  doctest Euler_7

  test "greets the world" do
    assert ExEuler.hello() == :world
  end
end
