use Mix.Config

config :debug_project, ecto_repos: [DebugProject.Repo]

config :debug_project, DebugProject.Repo,
  reindex: false,
  pool_size: 2,
  timeout: :infinity,
  ownership_timeout: :infinity,
  database: "./event_log.sqlite3"
