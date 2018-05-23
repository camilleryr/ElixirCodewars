
defmodule People do
  def list [] do
    ""
  end

  def list([h|t]) do
    list(h.name, t)
  end

  def list(string, []) do
    string
  end

  def list(string, [h|[]]) do
    "#{string} & #{h.name}"
  end

  def list(string, [h|t]) do
    list("#{string}, #{h.name}", t)
  end
end
