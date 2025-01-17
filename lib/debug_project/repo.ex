defmodule DebugProject.Repo do
    use Ecto.Repo, otp_app: :debug_project, adapter: Ecto.Adapters.SQLite3
end