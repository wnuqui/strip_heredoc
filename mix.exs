defmodule StripHeredoc.Mixfile do
  use Mix.Project

  def project do
    [app: :strip_heredoc,
     version: "0.7.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application, do: []

  defp deps do
    [
      {:mix_test_watch, "~> 0.3", only: :dev, runtime: false},
      {:ex_unit_notifier, "~> 0.1", only: :test},
      {:credo, "~> 0.5", only: [:dev, :test]},
      {:inch_ex, only: :docs},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
