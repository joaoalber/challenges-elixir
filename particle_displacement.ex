defmodule ParticleDisplacement do

  def main do
    value = IO.gets("Valor:")
    |> String.trim()
    |> String.split(" ")

    mapa1 = %{first_value: hd(value)}
    |> moises_parse()

    mapa2 = %{second_value: tl(value)}
    |> moises_parse()

    distance = (mapa1 * mapa2) * 2
    IO.puts(distance)
  end

  # No Pattern Matching Way
  def moises_parse_wt_pt_mt_wy(params) do
    params
    |> hd()
    |> String.to_integer()
  end

  # Pattern Matching Way
  def moises_parse(%{second_value: var}), do: hd(var) |> String.to_integer()

  def moises_parse(%{first_value: var}), do: String.to_integer(var)
  
end

ParticleDisplacement.main
