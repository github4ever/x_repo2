defmodule XRepo2 do
  @moduledoc """
  Documentation for XRepo2.
  """
  @behaviour Config.Provider

  def init(_), do: nil

  def load(config, _) do
    {:ok, _} = Application.ensure_all_started(:x_repo)

    Config.Reader.merge(config, phoenix_hello: [
      some_value: "TEST",
      another_value: "BEST",
    ])
  end

end
