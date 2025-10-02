defmodule Timeclock.TimeTracking.TimeEntry do
  use Ecto.Schema
  import Ecto.Changeset

  schema "time_entries" do
    field :clock_in, :utc_datetime
    field :clock_out, :utc_datetime
    field :total_hours, :float
    field :user_id, :id
    field :task_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(time_entry, attrs) do
    time_entry
    |> cast(attrs, [:clock_in, :clock_out, :total_hours])
    |> validate_required([:clock_in, :clock_out, :total_hours])
  end
end
