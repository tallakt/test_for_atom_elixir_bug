defmodule FooLib do
  def wrapper(x, y), do: FooLibHelper.foo(x, String.to_existing_atom(y))

  def say_ok, do: FooLibHelper.say_ok
end
