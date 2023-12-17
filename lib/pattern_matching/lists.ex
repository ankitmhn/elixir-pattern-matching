# ---
# Excerpted from "Thinking Elixir - PatternMatching", published by Mark Ericksen.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact me if you are in doubt. I make
# no guarantees that this code is fit for any purpose. Visit
# https://thinkingelixir.com/available-courses/pattern-matching/ for course
# information.
# ---
defmodule PatternMatching.Lists do
  @moduledoc """
  Fix or complete the code to make the tests pass.
  """

  def is_empty?(list) do
    case list do
      [] -> true
      _ -> false
    end
  end

  def has_1_item?(list) do
    case list do
      [_head] -> true
      _ -> false
    end
  end

  def at_least_one?(list) do
    case list do
      [_head | _tail] -> true
      _ -> false
    end
  end

  def return_first_item(list) do
    case list do
      [first | _] -> first
    end
  end

  def starts_with_1?(list) do
    case list do
      [1 | _] -> true
      _ -> false
    end
  end

  def sum_pair(list) do
    case list do
      [first, second] -> first + second
      _ -> :error
    end
  end

  def sum_first_2(list) do
    case list do
      [first, second | tail] -> [first + second | tail]
      _ -> list
    end
  end
end
