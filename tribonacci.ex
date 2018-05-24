
defmodule TribonacciSequence do

  @spec tribonacci({number, number, number}, non_neg_integer) :: [number]
  def tribonacci({a, b, c} = _signature, n) when n <= 3 do
    Enum.slice([a, b, c], 0, n)
  end

  def tribonacci({a,b,c} = _signature, n) do
    1..(n-3)
    |> Enum.reduce([a,b,c], fn(_el, acc) ->
      acc ++ [Enum.reduce(Enum.slice(acc, -3, 3), fn(el, acc) -> acc + el end)]
      end)
  end
end

#defmodule TribonacciSequence do
#  @spec tribonacci({number, number, number}, non_neg_integer) :: [number]
#  def tribonacci(signature, n) do
#    signature
#    |> Stream.unfold(fn {a, b, c} -> {a, {b, c, a+b+c}} end)
#    |> Enum.take(n)
#  end
#end
