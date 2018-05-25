defmodule Sumfracts do
  def sum_fracts([]), do: nil
  def sum_fracts(lst) do
    d =
      lst
      |> Enum.map(fn({_,a}) -> a end)
      |> lcm()

    lst
    |> Enum.reduce(0, fn({a,b}, acc) -> acc + ((div(d,b))*a) end)
    |> reduce(d)
  end

  def reduce(n,d) when rem(n,d) == 0, do: n/d
  def reduce(n,d) do
    x = gcd(n,d)
    {div(n,x), div(d,x)}
  end

  def lcm([h|[]]), do: h
  def lcm([h|t]), do: lcm(h, lcm(t))

  def lcm(a,b), do: div((a*b), gcd(a,b))

  def gcd(a,0), do: abs(a)
  def gcd(a,b), do: gcd(b, rem(a,b))
end
