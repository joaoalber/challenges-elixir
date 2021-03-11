defmodule SphereVolume do
    def main do
        radius = String.trim(IO.gets("Digite o valor do raio: ")) |> String.to_float

        volume = calculate(radius)

        IO.puts("VOLUME = #{volume}")
    end

    def calculate(radius) do
        pi = 3.14159

        (4/3) * pi * :math.pow(radius, 3) |> :erlang.float_to_binary([decimals: 3])
    end
end

SphereVolume.main
