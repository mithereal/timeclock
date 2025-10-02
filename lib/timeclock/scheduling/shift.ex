defmodule Timeclock.Scheduling.Shift do
  use Ecto.Schema
  import Ecto.Changeset

  schema "shifts" do
    field :name, :string
    field :start_time, :time
    field :end_time, :time

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(shift, attrs) do
    shift
    |> cast(attrs, [:name, :start_time, :end_time])
    |> validate_required([:name, :start_time, :end_time])
  end
end
