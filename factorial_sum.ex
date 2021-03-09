defmodule FactorialSum do
  def main do
    first_value = String.trim(IO.gets("Primeiro Valor: ")) |> String.to_integer
    second_value = String.trim(IO.gets("Segundo Valor: ")) |> String.to_integer

    started_at = :os.system_time(:millisecond)
    IO.puts(recursive_factorial(first_value) + recursive_factorial(second_value))
    finished_time = (:os.system_time(:millisecond) - started_at)
    IO.puts("A execução do programa durou: #{finished_time} milisegundos")

    IO.puts("=============================================================")

    started_at = :os.system_time(:millisecond)
    IO.puts(non_recursive_factorial(first_value) + non_recursive_factorial(second_value))
    finished_time = (:os.system_time(:millisecond) - started_at)
    IO.puts("A execução do programa durou: #{finished_time} milisegundos")
  end

  # be careful using this function with negative numbers because there's no stop condition
  # and this maybe kill your machine, the famous "travacode" 
  def recursive_factorial(number) do
    fn
      0 -> 1
      _ -> number * recursive_factorial(number - 1)
    end.(number)
  end

  def non_recursive_factorial(number) do
    Enum.reduce(1..number, fn (x, fact) -> fact * x end)
  end
end

FactorialSum.main
