defmodule DebugProject.Application do
    use Application

    def start(_, _) do
        opts = [strategy: :one_for_one, name: DebugProject.Supervisor]
        Supervisor.start_link([DebugProject.Repo], opts)
    end
    
end