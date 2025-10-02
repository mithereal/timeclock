defmodule Timeclock.Repo.Migrations.CreateAutomatedReportTasks do
  use Ecto.Migration

  def change do
    create table(:automated_report_tasks, primary_key: false) do
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")
      add :name, :string, null: false
      add :start_date, :utc_datetime
      add :type, :string
      add :period, :string
      add :recurrence, :string
      add :status, :string
      add :time_zone, :string
      add :next_run_date, :utc_datetime

      # Nested data
      add :recipient, :map
      add :report_template, :map

      # Scope
      add :scope_user_id, :uuid
      add :scope_tag_ids, {:array, :uuid}, default: []
      add :scope_organization_unit_ids, {:array, :uuid}, default: []

      # Other fields
      add :bcc_email, :string
      add :estimated_monthly_emails, :integer
      add :notes_terms, :text

      timestamps()
    end

    # Indexes
    create index(:automated_report_tasks, [:name])
    create index(:automated_report_tasks, [:type])
    create index(:automated_report_tasks, [:status])
    create index(:automated_report_tasks, [:next_run_date])
    create index(:automated_report_tasks, [:scope_user_id])
  end
end
