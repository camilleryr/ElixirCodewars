#defmodule Encryptor do
#  uppercase = 65..90
#  lowercase = 97..122
#  original_set = Enum.concat(uppercase, lowercase)
#
#  encoded_upper = Enum.concat(78..90, 65..77)
#  encoded_lower = Enum.concat(110..122, 97..109)
#  encoded_set = Enum.concat(encoded_upper, encoded_lower)
#
#  @letter_list Enum.zip(original_set, encoded_set)
#
#  def rot13(string) do
#     string
#    |> :binary.bin_to_list()
#    |> Enum.map(&replace_letter/1)
#    |> List.to_string()
#  end
#
#  def replace_letter(char) do
#    results = Enum.find(@letter_list, fn({a,_}) -> a == char end)
#		if(results != nil) do
#			{_, encoded} = results
#			encoded
#		else
#			char
#		end
#  end
#end

defmodule Encryptor do

    def rot13([]), do: ""
    def rot13([letter | next]) when letter in ?A..?M or letter in ?a..?m, do: <<letter + 13>> <> rot13(next)
    def rot13([letter | next]) when letter in ?N..?Z or letter in ?n..?z, do: <<letter - 13>> <> rot13(next)
    def rot13([letter | next]), do: <<letter>> <> rot13(next)

    def rot13(string), do: rot13(String.to_charlist(string))
end
