defmodule GamesTest do
  use ExUnit.Case
  doctest Games

  @tag :skip
  test "greets the world" do
    assert Games.hello() == :world
  end
end
