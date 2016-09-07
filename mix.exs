defmodule EctoFactory.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ecto_factory,
      version: "1.0.0",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      name: "EctoFactory",
      source_url: "https://github.com/hashrocket/ecto_factory",
      package: package,
      description: description,
      deps: deps,
      docs: [
        logo: "./logos/ectofactory_logo.png",
        extras: [
          "README.md"
        ]
      ]
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:ecto, "~> 2.0"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:earmark, ">= 0.0.0", only: :dev},
    ]
  end

  defp description do
    """
    Easily generate structs based on your ecto schemas.
    """
  end

  defp package do
    [
      name: :ecto_factory,
      licenses: ["Apache 2.0"],
      maintainers: ["Micah Cooper", "Hashrocket"],
      links: %{
        "GitHub" => "https://github.com/hashrocket/ecto_factory",
      }
    ]
  end

end
