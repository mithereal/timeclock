defmodule Timeclock.Repo.Migrations.CreateClockings do
  use Ecto.Migration

  def change do
    create table(:clockings, primary_key: false) do
      add :id, :binary_id, primary_key: true

      add :timestamp, :utc_datetime
      add :original_timestamp, :utc_datetime
      add :is_authentic, :boolean, default: false
      add :comment, :text
      add :origin, :string
      add :origin_display_name, :string
      add :status, :string
      add :inserted_on, :utc_datetime
      add :is_modified, :boolean, default: false
      add :modified_by_user, :string
      add :modified_on, :utc_datetime
      add :geo_location_timestamp, :utc_datetime
      add :has_geo_location, :boolean, default: false
      add :accuracy, :float

      add :user_id, :binary_id
      add :first_name, :string
      add :middle_name, :string
      add :last_name, :string

      add :device_id, :binary_id
      add :beacon_id, :binary_id

      add :clocking_point_id, :binary_id
      add :clocking_point_name, :string

      add :clocking_definition_id, :binary_id
      add :clocking_definition_name, :string

      add :original_clocking_definition_id, :binary_id
      add :original_clocking_definition_name, :string

      add :approval_request_id,
          references(:approval_requests, type: :binary_id, on_delete: :nothing)

      timestamps()
    end

    create index(:clockings, [:user_id])
    create index(:clockings, [:device_id])
    create index(:clockings, [:beacon_id])
    create index(:clockings, [:clocking_definition_id])
    create index(:clockings, [:approval_request_id])
  end
end
