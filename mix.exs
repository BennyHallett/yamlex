defmodule Yamlex.Mixfile do
  use Mix.Project

  def project do
    [app: :yamlex,
     version: "0.0.1",
     elixir: "~> 1.0",
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:yamerl]]
  end

  defp deps do
    [{:yamerl, github: "yakaz/yamerl"}]
  end

  defp description do
    """
    Yamlex is a YAML parser.

    In it's current implementation, it is a simple wrapper around yamerl, with tests
    against it. In the future, Yamlex will be ported to a pure Elixir implementation.
    """
  end

  defp package do
    [
      contributors: ["Benny Hallett"],
      licenses: ["MIT"],
      links: %{ "GitHub" => "https://github.com/bennyhallett/yamlex" }
    ]
  end
end
