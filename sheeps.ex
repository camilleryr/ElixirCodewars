
defmodule Shepherd do
  def count_sheeps(sheeps) do
    sheeps
    |> Enum.reduce(0, fn(x, acc) ->
      if x == true, do: acc + 1, else: acc
    end)
  end
end
