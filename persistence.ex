
defmodule PersistentBugger do
  def persistence(n) do
    calculate_persistence(n, 0)
  end

  defp calculate_persistence(number, iterations) when number < 10 do
    iterations
  end

  defp calculate_persistence(number, iterations) do
    number
    |> Integer.digits()
    |> Enum.reduce(1, fn(el, acc) -> el*acc end)
    |> calculate_persistence(iterations + 1) end
end
