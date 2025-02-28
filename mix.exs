defmodule InfiniteLoop.MixProject do
  use Mix.Project

  def project do
    [
      app: :infinite_loop,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {InfiniteLoop.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, "~> 1.4"},
      {:finitomata, "~> 0.30.0"},
      {:formulae, "~> 0.17.1"}
    ]
  end
end
