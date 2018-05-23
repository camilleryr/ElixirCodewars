
defmodule Mumbling do
  
  def accum(s) do
    s
    |> String.downcase()
    |> String.split("")
    |> Enum.filter(fn(el) -> el != "" end)
    |> Enum.with_index()
    |> Enum.map(fn({el,i}) -> String.duplicate(el, i+1) end)
    |> Enum.map(fn(el) -> String.capitalize(el) end)
    |> Enum.join("-")
  end
  
end

