defmodule FooLibTest do
  use ExUnit.Case
  doctest FooLib

  test "call foo as the first function" do
    assert "A/B_BAR" == FooLib.wrapper("BAR", "A/B")
  end
end
