```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:halt)
    end
    IO.puts(x)
  end)
catch
  :halt -> IO.puts("Iteration stopped at 3")
end
```