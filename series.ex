
defmodule Series do
  def sum(num) when num == 0 do
    "0.00"
  end

  def sum(num) when num == 1 do
    "1.00"
  end

  def sum(num) do
    1..num
    |> Enum.reduce(0, fn(el, acc) -> acc + (1 / (1 + ((el-1) * 3))) end)
    |> Float.round(2)
    |> Float.to_string()
  end
end
