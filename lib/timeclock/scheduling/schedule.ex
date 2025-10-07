defmodule Timeclock.Scheduling.Schedule do
  use Ecto.Schema
  import Ecto.Changeset

  schema "schedules" do
    field :start_time, :utc_datetime
    field :end_time, :utc_datetime
    field :user_id, :id
    field :shift_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(schedule, attrs) do
    schedule
    |> cast(attrs, [:start_time, :end_time])
    |> validate_required([:start_time, :end_time])
  end
end
