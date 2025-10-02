defmodule Timeclock.Repo.Migrations.CreateAbsences do
  use Ecto.Migration

  def change do
    create table(:absences, primary_key: false) do
      # Primary key UUID
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      # User & Group references
      add :user_id, :uuid, null: false
      add :group_id, :uuid

      # Names
      add :first_name, :string
      add :middle_name, :string
      add :last_name, :string

      # Event info
      add :timestamp, :utc_datetime
      add :absence_definition_id, :uuid
      add :absence_definition_name, :string
      add :absence_definition_type, :string

      # System tracking
      add :inserted_on, :utc_datetime
      add :modified_on, :utc_datetime

      # Origin info
      add :origin, :string
      add :origin_display_name, :string

      # Comments / Icons
      add :comment, :text
      add :icon_id, :uuid
      add :icon_color, :string

      # Status & flags
      add :is_authentic, :boolean, default: false
      add :is_calculated, :boolean, default: false
      add :status, :string

      # Approval request
      add :approval_request, :map

      # Partial time
      add :partial_time_from, :time
      add :partial_time_to, :time
      add :partial_time_duration, :float
      add :is_partial, :boolean, default: false

      # Overrides & modifications
      add :override_holiday_absence, :boolean, default: false
      add :is_modified, :boolean, default: false
      add :modified_by_user, :string

      timestamps()
    end

    # Indexes for performance on foreign keys
    create index(:absences, [:user_id])
    create index(:absences, [:group_id])
    create index(:absences, [:absence_definition_id])
    create index(:absences, [:icon_id])
  end
end
