defmodule Timeclock.Repo.Migrations.CreateApprovalRequestDefinitions do
  use Ecto.Migration

  def change do
    create table(:approval_request_definitions, primary_key: false) do
      # Primary key UUID
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      # Fields
      add :name, :string, null: false
      add :request_type, :integer, null: false
      add :start_time_parameter_required, :boolean, default: false
      add :end_time_parameter_required, :boolean, default: false
      add :numeric_value_required, :boolean, default: false
      add :time_value_required, :boolean, default: false

      timestamps()
    end

    # Add check constraint to enforce request_type enum values (0..5)
    create constraint(:approval_request_definitions, :request_type_enum,
             check: "request_type IN (0, 1, 2, 3, 4, 5)"
           )

    # Indexes for common queries
    create index(:approval_request_definitions, [:name])
    create index(:approval_request_definitions, [:request_type])
  end
end
