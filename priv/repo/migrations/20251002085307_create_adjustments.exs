defmodule Timeclock.Repo.Migrations.CreateAdjustments do
  use Ecto.Migration

  def change do
    create table(:adjustments, primary_key: false) do
      # Primary key UUID
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      # User info
      add :user_id, :uuid, null: false
      add :first_name, :string
      add :middle_name, :string
      add :last_name, :string
      add :group_id, :uuid

      # Adjustment details
      add :value, :float
      add :timestamp, :utc_datetime
      add :adjustment_definition_id, :uuid
      add :adjustment_definition_name, :string
      add :adjustment_definition_code, :string
      add :calculation_result_type_value_type, :string
      add :is_authentic, :boolean, default: false
      add :comment, :text
      add :status, :string
      add :origin, :string
      add :inserted_on, :utc_datetime
      add :icon_id, :uuid

      # Partial time
      add :partial_time_from, :time
      add :partial_time_to, :time
      add :is_partial, :boolean, default: false
      add :partial_time_duration, :float

      # Nested approval request
      add :approval_request, :map

      timestamps()
    end

    # Indexes for performance
    create index(:adjustments, [:user_id])
    create index(:adjustments, [:group_id])
    create index(:adjustments, [:adjustment_definition_id])
    create index(:adjustments, [:icon_id])
  end
end
