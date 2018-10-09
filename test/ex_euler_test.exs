defmodule ExEulerTest do
  use ExUnit.Case
  doctest Euler1
  doctest Euler2
  doctest Euler3
  doctest Euler4
  doctest Euler5
  doctest Euler6
  doctest Euler7

  test "greets the world" do
    assert ExEuler.hello() == :world
  end
end
