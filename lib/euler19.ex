defmodule Euler19 do
  @moduledoc """
  How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to
  31 Dec 2000)?
  """

  def solve() do
    for year <- 1901..2000, month <- 1..12,
      month_starts_with_sunday?(year, month) do
      1
    end
    |> Enum.count()
  end

  def month_starts_with_sunday?(year, month) do
    {:ok, date} = Date.new(year, month, 1)
    Date.day_of_week(date) == 7
  end

end
