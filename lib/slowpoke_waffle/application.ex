defmodule SlowpokeWaffle.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    Supervisor.start_link(children(), opts())
  end

  defp children do
    [
      {SlowpokeWaffle.UploaderSupervisor, []},
      {SlowpokeWaffle.UploaderStatus, []}
    ]
  end

  defp opts do
    [strategy: :one_for_one, name: SlowpokeWaffle.Supervisor]
  end
end
