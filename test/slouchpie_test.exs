defmodule SlouchpieTest do
  use ExUnit.Case
  doctest Slouchpie

  test "greets the world" do
    assert Slouchpie.hello() == :world
  end
end
