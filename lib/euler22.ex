defmodule Euler22 do
  @moduledoc """
  Using names.txt (right click and 'Save Link/Target As...'), a 46K text file
  containing over five-thousand first names, begin by sorting it into
  alphabetical order. Then working out the alphabetical value for each name,
  multiply this value by its alphabetical position in the list to obtain a
  name score.

  For example, when the list is sorted into alphabetical order, COLIN, which
  is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So,
  COLIN would obtain a score of 938 × 53 = 49714.

  What is the total of all the name scores in the file?
  """

  def solve do
    File.read!("data/p022_names.txt")
    |> String.split(",")
    |> Enum.map(&(String.trim(&1, "\"")))
    |> Enum.sort
    |> Enum.with_index(1)
    |> Enum.map(&name_score/1)
    |> Enum.sum
  end

  def name_score({name, index}) do
    value = name
      |> String.to_charlist
      |> Enum.map(&(&1 - ?A + 1))
      |> Enum.sum
    value * index
  end

end
