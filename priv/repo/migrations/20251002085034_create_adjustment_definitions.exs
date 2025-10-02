defmodule Timeclock.Repo.Migrations.CreateAdjustmentDefinitions do
  use Ecto.Migration

  def change do
    create table(:adjustment_definitions, primary_key: false) do
      # Primary key UUID
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      # Core fields
      add :name, :string, null: false
      add :type, :string, null: false
      add :code, :string

      # Calculation result type
      add :calculation_result_type_id, :uuid
      add :calculation_result_type_name, :string
      add :calculation_result_type_value_type, :string

      # Flags
      add :is_available_for_admins_only, :boolean, default: false
      add :is_active, :boolean, default: true

      # Restrictions
      add :restriction_type, :string
      add :tag_id, :uuid

      timestamps()
    end

    # Indexes for common queries
    create index(:adjustment_definitions, [:calculation_result_type_id])
    create index(:adjustment_definitions, [:tag_id])
  end
end
