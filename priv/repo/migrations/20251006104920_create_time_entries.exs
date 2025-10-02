defmodule Timeclock.Repo.Migrations.CreateTimeEntries do
  use Ecto.Migration

  def change do
    create table(:time_entries) do
      add :clock_in, :utc_datetime
      add :clock_out, :utc_datetime
      add :total_hours, :float
      add :user_id, references(:users, on_delete: :nothing)
      add :task_id, references(:tasks, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:time_entries, [:user_id])
    create index(:time_entries, [:task_id])
  end
end
