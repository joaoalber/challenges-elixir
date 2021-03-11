defmodule Salary do
    def main do
        number = String.trim(IO.gets("Digite o id do funcionário: ")) |> String.to_integer
        worked_hours = String.trim(IO.gets("Digite as horas trabalhadas: ")) |> String.to_integer
        salary_per_hour = String.trim(IO.gets("Digite o salário por hora: ")) |> String.to_integer

        full_salary = calculate_salary(worked_hours, salary_per_hour)

        IO.puts("NUMBER = #{number}")
        IO.puts("SALARY = U$ #{full_salary}")
    end

    def calculate_salary(hours, salary) do
        (hours * salary)/1 |> :erlang.float_to_binary([decimals: 2])
    end
end

Salary.main
