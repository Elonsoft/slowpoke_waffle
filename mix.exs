defmodule SlowpokeWaffle.MixProject do
  use Mix.Project

  @version "0.3.0"

  def project do
    [
      app: :slowpoke_waffle,
      version: @version,
      elixir: "~> 1.6",
      elixirc_paths: elixirc_path(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "SlowpokeWaffle",
      docs: docs(),

      # Hex
      description: description(),
      package: package()
    ]
  end

  def application do
    [
      mod: {SlowpokeWaffle.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp elixirc_path(:test), do: ["lib", "test/support"]
  defp elixirc_path(_), do: ["lib"]

  defp deps do
    [
      {:waffle, "~> 1.0"},
      {:credo, "~> 1.0.5", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0.0-rc.6", only: [:dev], runtime: false},
      {:ex_aws, "~> 2.0"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
      {:plug, "~> 1.7"}
    ]
  end

  defp docs do
    [
      main: "SlowpokeWaffle",
      extras: ["README.md"],
      source_url: "https://github.com/Elonsoft/slowpoke_waffle"
    ]
  end

  defp description do
    """
    Elixir lirary for image uploading
    """
  end

  defp package do
    [
      links: %{"GitHub" => "https://github.com/Elonsoft/slowpoke_waffle"},
      licenses: ["MIT"],
      files: ~w(.formatter.exs mix.exs README.md LICENSE.md lib)
    ]
  end
end
