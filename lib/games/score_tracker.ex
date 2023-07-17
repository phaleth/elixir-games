defmodule Games.ScoreTracker do
  use GenServer

  def start_link(_opts) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def add_points(points) do
    GenServer.cast(__MODULE__, {:add_points, points})
  end

  def current_score() do
    GenServer.call(__MODULE__, :get_score)
  end

  @impl true
  def init(_opts) do
    {:ok, 0}
  end

  @impl true
  def handle_cast({:add_points, points}, state) do
    {:noreply, state + points}
  end

  @impl true
  def handle_call(:get_score, _from, state) do
    response = state
    {:reply, response, state}
  end
end
