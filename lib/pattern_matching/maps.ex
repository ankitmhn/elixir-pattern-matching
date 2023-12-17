# ---
# Excerpted from "Thinking Elixir - PatternMatching", published by Mark Ericksen.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact me if you are in doubt. I make
# no guarantees that this code is fit for any purpose. Visit
# https://thinkingelixir.com/available-courses/pattern-matching/ for course
# information.
# ---
defmodule PatternMatching.Maps do
  @moduledoc """
  Fix or complete the code to make the tests pass.
  """

  def return_name(%{name: name}) do
    name
  end

  def has_sides?(value) do
    Map.has_key?(value, :sides)
  end

  def net_change(value) do
    case value do
      %{initial_balance: initial, ending_balance: final} -> {:ok, final - initial}
      _ -> {:error, "Missing balance information"}
    end
  end

  def classify_response(%{"success" => true, "token" => token}) do
    {:ok, token}
  end

  def classify_response(%{"success" => false, "token" => "invalid"}) do
    {:error, :invalid}
  end

  def classify_response(%{"success" => false, "token" => nil} = _response) do
    {:error, :retry}
  end

  def classify_response(
        %{"success" => false, "messages" => %{"general" => %{"result_code" => 0}} = _messages} =
          _response
      ) do
    {:error, :frozen}
  end
end
