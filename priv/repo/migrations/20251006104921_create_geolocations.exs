defmodule Timeclock.Repo.Migrations.CreateGeolocations do
  use Ecto.Migration

  def change do
    create table(:geolocations) do
      add :latitude, :float
      add :longitude, :float
      add :recorded_at, :utc_datetime

      timestamps(type: :utc_datetime)
    end
  end
end
