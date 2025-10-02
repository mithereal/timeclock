defmodule Timeclock.Repo.Migrations.CreateAnalyticsActivities do
  use Ecto.Migration

  def change do
    create table(:analytics_activities, primary_key: false) do
      # Primary key UUID
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      # Fields
      add :name, :string, null: false
      add :properties, :map, null: true

      timestamps()
    end

    # Indexes for queries
    create index(:analytics_activities, [:name])
  end
end
