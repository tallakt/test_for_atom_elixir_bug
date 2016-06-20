defmodule FooLibHelper do
  @params ~w(A/B B/A A B)

  for name <- @params do
    def foo(x, unquote(name |> String.to_atom)), do: unquote(name) <> "_" <> x
  end

  def say_ok, do: :ok
end

defmodule FooLib do
  def wrapper(x, y), do: FooLibHelper.foo(x, String.to_existing_atom(y))

  def say_ok, do: FooLibHelper.say_ok
end
