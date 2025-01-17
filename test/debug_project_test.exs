defmodule DebugProjectTest do
  use ExUnit.Case
  doctest DebugProject

  test "greets the world" do
    assert DebugProject.hello() == :world
  end
end
