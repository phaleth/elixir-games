defmodule Games.ScoreTrackerTest do
  use ExUnit.Case
  doctest Games.ScoreTracker
  alias Games.ScoreTracker, as: ST

  describe "score tracker" do
    test "current_score/1 retrieves the current score" do
      ST.add_points(10)
      assert ST.current_score() === 10
    end

    test "add_points/1 adds points to the score" do
      assert ST.add_points(10) === :ok
    end
  end
end
