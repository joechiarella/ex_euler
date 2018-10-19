defmodule Euler17 do
  @moduledoc """
  If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

  If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
  """

  def solve do
    for num <- 1..1000, into: [] do
      to_english(num)
    end
    |> Enum.map(&(String.replace(&1, " ", "")))
    |> Enum.map(&String.length/1)
    |> Enum.sum()
  end

  def to_english(0), do: ""
  def to_english(1), do: "one"
  def to_english(2), do: "two"
  def to_english(3), do: "three"
  def to_english(4), do: "four"
  def to_english(5), do: "five"
  def to_english(6), do: "six"
  def to_english(7), do: "seven"
  def to_english(8), do: "eight"
  def to_english(9), do: "nine"

  def to_english(10), do: "ten"
  def to_english(11), do: "eleven"
  def to_english(12), do: "twelve"
  def to_english(13), do: "thirteen"
  def to_english(14), do: "fourteen"
  def to_english(15), do: "fifteen"
  def to_english(16), do: "sixteen"
  def to_english(17), do: "seventeen"
  def to_english(18), do: "eighteen"
  def to_english(19), do: "nineteen"

  def to_english(20), do: "twenty"
  def to_english(30), do: "thirty"
  def to_english(40), do: "forty"
  def to_english(50), do: "fifty"
  def to_english(60), do: "sixty"
  def to_english(70), do: "seventy"
  def to_english(80), do: "eighty"
  def to_english(90), do: "ninety"

  def to_english(1000), do: "one thousand"

  def to_english(num) when num >= 20 and num < 100 do
    tens = div(num, 10)
    ones = rem(num, 10)
    to_english(tens * 10) <> " " <> to_english(ones)
  end

  def to_english(num) when num >= 100 and num < 1000 do
    hundreds = div(num, 100)
    rest = rem(num, 100)
    if rest == 0 do
      to_english(hundreds) <> " hundred"
    else
      to_english(hundreds) <> " hundred and " <> to_english(rest)
    end

  end

end
