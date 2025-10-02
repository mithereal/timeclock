defmodule Timeclock.Repo.Migrations.CreateAutomatedReportTaskReportTemplates do
  use Ecto.Migration

  def change do
    create table(:automated_report_task_report_templates, primary_key: false) do
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")
      add :name, :string, null: false

      timestamps()
    end

    create index(:automated_report_task_report_templates, [:name])
  end
end
