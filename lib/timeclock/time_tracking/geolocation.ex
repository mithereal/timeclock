defmodule Timeclock.TimeTracking.Geolocation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "geolocations" do
    field :latitude, :float
    field :longitude, :float
    field :recorded_at, :utc_datetime

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(geolocation, attrs) do
    geolocation
    |> cast(attrs, [:latitude, :longitude, :recorded_at])
    |> validate_required([:latitude, :longitude, :recorded_at])
  end
end
