defmodule DebugProject.MixProject do
  use Mix.Project

  @system_dir System.get_env("SYS_DIR") || "./"
  System.put_env("EXQLITE_USE_SYSTEM", "1")
  System.put_env("EXQLITE_SYSTEM_LDFLAGS", "-L#{@system_dir}/usr/lib/ -lsqlite3")
  System.put_env("EXQLITE_SYSTEM_CFLAGS", "-I#{@system_dir}/usr/include")

  def project do
    [
      app: :debug_project,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {DebugProject.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      # {:exqlite, path: "../exqlite", override: true},
      {:exqlite, github: "se-apc/exqlite", override: true},
      {:ecto_sqlite3, "~> 0.7.4"},
      {:ecto, "~> 3.0"},
      {:poison, "~> 3.0", override: true}
    ]
  end
end
