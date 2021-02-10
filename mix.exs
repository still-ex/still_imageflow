defmodule StillImageflow.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/still-ex/still_imageflow"

  def project do
    [
      app: :still_imageflow,
      description: "Image adapter implementing Imageflow for Still",
      version: @version,
      elixir: "~> 1.11",
      elixirc_paths: ["lib"] ++ elixirc_paths(Mix.env()),
      package: package(),
      deps: deps(),
      name: "Still Imageflow",
      source_url: @source_url,
      homepage_url: "https://hexdocs.pm/still_imageflow",
      docs: docs()
    ]
  end

  defp docs do
    [
      extras: ["README.md"],
      main: "readme",
      source_url: @source_url,
      source_ref: "v#{@version}"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.4", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.23", only: :dev, runtime: false},
      {:imageflow, "~> 0.4.0"},
      {:still, ">= 0.2.0"}
    ]
  end

  defp elixirc_paths(:test) do
    ["test/support"]
  end

  defp elixirc_paths(_), do: []

  defp package do
    [
      licenses: ["ISC"],
      links: %{"GitHub" => "https://github.com/still-ex/still_imageflow"},
      files: [
        "mix*",
        "LICENSE",
        "lib/*"
      ]
    ]
  end
end
