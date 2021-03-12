defmodule Parentheses do
  def main do
    IO.gets("Digite a expressão: ")
      |> String.split(~r{[^\(\)]}, trim: true)
      |> List.to_string
      |> String.split("")
      |> Enum.filter(fn x -> x != "" end)
      #|> match
  end

  defp match(list, i \\ 0) do
  end
end

Parentheses.main
