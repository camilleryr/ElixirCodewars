
defmodule Divisible13 do
  @remainders [1, 10, 9, 12, 3, 4]
  def thirt(n) do
    calculate_thirt(n, nil)
  end

  def calculate_thirt(num1, num2) when num1 == num2 do
    num1
  end

  def calculate_thirt(num1, _num2) do
    {res, _} = num1
    |> Integer.digits()
    |> Enum.reverse()
    |> Enum.reduce({0, @remainders}, fn(el, {a, [h|t]} = acc) ->
     {a + (el*h), t++[h]}
    end)

    calculate_thirt(res, num1)
  end

end
