defmodule Timeclock.Repo.Migrations.CreateApprovalRequestLogs do
  use Ecto.Migration

  def change do
    create table(:approval_request_logs, primary_key: false) do
      # Primary key UUID
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      # Fields
      add :user_id, :uuid, null: false
      add :user_name, :string, null: false
      add :action, :string, null: false
      add :date_time, :utc_datetime, null: false

      timestamps()
    end

    # Indexes for performance
    create index(:approval_request_logs, [:user_id])
    create index(:approval_request_logs, [:date_time])
  end
end
