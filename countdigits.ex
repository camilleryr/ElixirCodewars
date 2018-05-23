defmodule Countdigit do

  def nb_dig(n, d) do
    0..n
    |> Enum.map(fn(el) -> el*el end)
    |> Enum.map(fn(el) -> Integer.digits(el) end)
    |> Enum.concat()
    |> Enum.count(fn(el) -> el == d end)
  end
end


