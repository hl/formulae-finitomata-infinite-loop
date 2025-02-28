defmodule InfiniteLoopTest do
  use ExUnit.Case
  doctest InfiniteLoop

  test "greets the world" do
    assert InfiniteLoop.hello() == :world
  end
end
