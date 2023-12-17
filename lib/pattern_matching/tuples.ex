# ---
# Excerpted from "Thinking Elixir - PatternMatching", published by Mark Ericksen.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact me if you are in doubt. I make
# no guarantees that this code is fit for any purpose. Visit
# https://thinkingelixir.com/available-courses/pattern-matching/ for course
# information.
# ---
defmodule PatternMatching.Tuples do
  @moduledoc """
  Fix or complete the code to make the tests pass.
  """

  def day_from_date({_year, _month, date}) do
    date
  end

  def has_three_elements?(tuple) do
    case tuple do
      {_, _, _} -> true
      _ -> false
    end
  end

  def major_us_holiday({_year, month, _day}) do
    case month do
      12 -> "Christmas"
      7 -> "4th of July"
      1 -> "New Years"
      _ -> "Uh..."
    end
  end

  def greet_user({:ok, user}), do: "Hello #{user}!"
  def greet_user({:error, _reason}), do: "Cannot greet"

  def add_to_result({:ok, value}), do: {:ok, value + 10}
  def add_to_result({:error, _value} = tuple), do: tuple
end
