defmodule Sum do
  def main do
    a = String.trim(IO.gets("Primeiro Valor: ")) |> String.to_integer
    b = String.trim(IO.gets("Segundo Valor: ")) |> String.to_integer
    
    IO.puts(a + b)
  end
end

Sum.main
