defmodule CircleArea do
  def main do
    pi = 3.14159
    radius = String.trim(IO.gets("Raio do Círculo: ")) |> String.to_float
    circle_area = (pi * :math.pow(radius, 2)) |> Float.round(4)

    IO.puts(circle_area)
  end
end

CircleArea.main

