defmodule Geo3d.Types.Mixfile do
  use Mix.Project

  def project do
    [
      app: :geo_3d_types,
      version: "0.0.1",
      elixir: "~> 1.0",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:geo_3d_utils, github: "ttvd/elixir-geo-3d-utils"}
    ]
  end

  def package do
    [
      files: ["lib", "mix.exs", "README.md"],
      contributors: ["Mykola Konyk"],
      licenses: ["MS-RL"],
      links: %{"GitHub" => "https://github.com/ttvd/elixir-geo-3d-types"}
    ]
  end
end
