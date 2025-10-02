defmodule Timeclock.Repo.Migrations.CreateAbsenceDefinitions do
  use Ecto.Migration

  def change do
    create table(:absence_definitions, primary_key: false) do
      # Primary key UUID
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      # Core fields
      add :name, :string, null: false
      add :integration_id, :string
      add :code, :string
      add :type, :string, null: false
      add :is_available_for_admins_only, :boolean, default: false

      # Category fields
      add :category_definition_id, :uuid
      add :category_definition_name, :string

      # Additional optional fields
      add :fraction, :float
      add :icon_id, :uuid
      add :is_active, :boolean, default: true
      add :restriction_type, :string
      add :tag_id, :uuid

      timestamps()
    end

    # Indexes for common queries or foreign keys
    create index(:absence_definitions, [:category_definition_id])
    create index(:absence_definitions, [:tag_id])
    create index(:absence_definitions, [:icon_id])
  end
end
