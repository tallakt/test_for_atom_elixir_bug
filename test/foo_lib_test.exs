defmodule FooLibTest do
  use ExUnit.Case, async: true # always succeeds without async: true

  test "call foo as the first function" do
    # this test fails, once in a while
    assert {:ok, "A/B", "BAR"} == FooLib.wrapper("BAR", "A/B")
  end

  test "call foo as the second function" do
    # this test succeeds
    # should not matter, but seems to load the atom tbale from FooLibHelper
    FooLib.say_ok 
    assert {:ok, "A/B", "BAR"} == FooLib.wrapper("BAR", "A/B")
  end
end
