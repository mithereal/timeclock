defmodule Timeclock.Repo.Migrations.CreateBeacons do
  use Ecto.Migration

  def change do
    create table(:beacons, primary_key: false) do
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")
      add :name, :string, null: false
      add :major_value, :integer
      add :minor_value, :integer
      add :clocking_point_id, :uuid
      add :uuid, :string

      timestamps()
    end

    # Indexes for lookup
    create index(:beacons, [:name])
    create index(:beacons, [:clocking_point_id])
    create index(:beacons, [:uuid])
  end
end
