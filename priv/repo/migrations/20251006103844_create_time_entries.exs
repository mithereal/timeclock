defmodule Timeclock.Repo.Migrations.CreateTimeEntries do
  use Ecto.Migration

  def change do
    create table(:time_entries) do
      add :user_id, :integer
      add :task_id, :integer
      add :clock_in, :utc_datetime
      add :clock_out, :utc_datetime
      add :total_hours, :float
      timestamps()
    end
  end
end
