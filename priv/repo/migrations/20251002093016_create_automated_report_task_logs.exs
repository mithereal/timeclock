defmodule Timeclock.Repo.Migrations.CreateAutomatedReportTaskLogs do
  use Ecto.Migration

  def change do
    create table(:automated_report_task_logs, primary_key: false) do
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      add :automated_report_task_type, :integer, null: false
      add :started_on, :utc_datetime
      add :completed_on, :utc_datetime
      add :automated_report_task_id, :uuid
      add :automated_report_task_name, :string
      add :trigger_type, :string
      add :status, :string
      add :error, :text
      add :group_id, :string

      timestamps()
    end

    # Indexes for common queries
    create index(:automated_report_task_logs, [:automated_report_task_id])
    create index(:automated_report_task_logs, [:automated_report_task_type])
    create index(:automated_report_task_logs, [:status])
    create index(:automated_report_task_logs, [:started_on])
    create index(:automated_report_task_logs, [:completed_on])
  end
end
