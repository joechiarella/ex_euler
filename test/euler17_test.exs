defmodule Euler17Test do
  use ExUnit.Case

  test "Ones" do
    assert Euler17.to_english(1) == "one"
    assert Euler17.to_english(7) == "seven"
  end

  test "Tens" do
    assert Euler17.to_english(11) == "eleven"
    assert Euler17.to_english(15) == "fifteen"
    assert Euler17.to_english(22) == "twenty two"
    assert Euler17.to_english(30) == "thirty"
  end

  test "Hundreds" do
    assert Euler17.to_english(123) == "one hundred and twenty three"
    assert Euler17.to_english(456) == "four hundred and fifty six"
    assert Euler17.to_english(789) == "seven hundred and eighty nine"
  end

  test "Solve Euler #17" do
    assert Euler17.solve() == 21124
  end

end
