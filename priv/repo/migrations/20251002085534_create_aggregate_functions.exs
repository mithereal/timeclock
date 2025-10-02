defmodule Timeclock.Repo.Migrations.CreateAggregateFunctions do
  use Ecto.Migration

  def change do
    create table(:aggregate_functions, primary_key: false) do
      # Primary key UUID
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      # Fields
      add :type, :string, null: false
      add :is_enabled, :boolean, default: true

      timestamps()
    end

    # Indexes for common queries
    create index(:aggregate_functions, [:type])
    create index(:aggregate_functions, [:is_enabled])
  end
end
