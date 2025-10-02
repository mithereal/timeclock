defmodule Timeclock.Repo.Migrations.CreateClockingDefinitions do
  use Ecto.Migration

  def change do
    create table(:clocking_definitions, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string, null: false
      add :type, :string
      add :code, :string

      add :starting_category_definition_id, :binary_id
      add :starting_category_definition_name, :string

      add :absence_category_definition_id, :binary_id
      add :absence_category_definition_name, :string

      add :in_clocking_definition_id, :binary_id
      add :in_clocking_definition_name, :string

      add :out_clocking_definition_id, :binary_id
      add :out_clocking_definition_name, :string

      add :is_active, :boolean, default: true
      add :restriction_type, :string
      add :tag_id, :binary_id

      timestamps()
    end

    create index(:clocking_definitions, [:code])
    create index(:clocking_definitions, [:starting_category_definition_id])
    create index(:clocking_definitions, [:absence_category_definition_id])
    create index(:clocking_definitions, [:in_clocking_definition_id])
    create index(:clocking_definitions, [:out_clocking_definition_id])
    create index(:clocking_definitions, [:tag_id])
  end
end
