defmodule Timeclock.Scheduling.Calendar do
  use Ecto.Schema
  import Ecto.Changeset

  schema "calendars" do
    field :name, :string
    field :timezone, :string
    field :work_days, {:array, :string}

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(calendar, attrs) do
    calendar
    |> cast(attrs, [:name, :timezone, :work_days])
    |> validate_required([:name, :timezone, :work_days])
  end
end
