defmodule FooLibHelper do
  @params ~w(A/B B/A A B)

  for name <- @params do
    def foo(x, unquote(name |> String.to_atom)), do: {:ok, unquote(name), x}
  end

  def say_ok, do: :ok
end
