defmodule Timeclock.Repo.Migrations.CreateAuditLogs do
  use Ecto.Migration

  def change do
    create table(:audit_logs, primary_key: false) do
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      add :table_name, :string, null: false
      add :entity_id, :string
      add :entity_type, :string
      add :entity_type_name, :string
      add :ip_address, :string
      add :action, :string
      add :date_time, :utc_datetime, null: false
      add :old_value, :map
      add :new_value, :map
      add :support_account_id, :uuid
      add :user_id, :uuid
      add :user_name, :string

      timestamps()
    end

    # Indexes for common queries
    create index(:audit_logs, [:table_name])
    create index(:audit_logs, [:entity_id])
    create index(:audit_logs, [:entity_type])
    create index(:audit_logs, [:user_id])
    create index(:audit_logs, [:date_time])
  end
end
