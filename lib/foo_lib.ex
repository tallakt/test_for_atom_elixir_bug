defmodule FooLib do
  @params ~w(A/B B/A A B)

  for name <- @params do
    def foo(x, unquote(name |> String.to_atom)), do: unquote(name) <> "_" <> x
  end

  def wrapper(x, y), do: Foo.foo(x, String.to_existing_atom(y))
end
