defmodule Games do
  defp prompt() do
    IO.gets("""
    What game would you like to play?
    1. Guessing Game
    2. Rock Paper Scissors
    3. Wordle

    enter "stop" to exit
    """)
    |> to_string()
    |> String.trim_trailing()
  end

  defp choose_game() do
    choice = prompt()

    case choice do
      "1" ->
        Games.GuessingGame.play()
        choose_game()

      "2" ->
        Games.RockPaperScissors.play()
        choose_game()

      "3" ->
        Games.Wordle.play()
        choose_game()

      "stop" ->
        IO.puts("Goodbye.")

      _ ->
        choose_game()
    end
  end

  def main(args) do
    {_opts, _word, _errors} = OptionParser.parse(args, switches: [])

    choose_game()
  end
end
